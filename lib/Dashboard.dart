// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_string_interpolations

import 'package:banking_app/AccountDetailsPage.dart';
import 'package:banking_app/Accounts.dart';
import 'package:banking_app/FixedDeposits.dart';
import 'package:banking_app/LoginPage.dart';
import 'package:banking_app/ProfilePage.dart';
import 'package:banking_app/RequestLoan.dart';
import 'package:banking_app/services/api.dart';
import 'package:banking_app/services/auth.dart';
import 'package:banking_app/services/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';

import 'TransactionPage.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> pages = [
    WalletScreen(customer: CurrentCustomer().currentCustomerValue),
    AccountsPage(),
    RequestLoanPage(),
    FixedDepositsPage(),
    ProfilePage(),
  ];
  int _widgetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Customer>(
      stream: currentCustomer.currentCustomer,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.custId != 0) {
          pages = [
            WalletScreen(customer: snapshot.data!),
            AccountsPage(),
            RequestLoanPage(),
            FixedDepositsPage(),
            ProfilePage(),
          ];
          return Scaffold(
            // Display details of customer in column
            body: pages.elementAt(_widgetIndex),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _widgetIndex,
              onTap: (value) {
                setState(() {
                  _widgetIndex = value;
                });
              },
              backgroundColor: Colors.blueGrey[900],
              // fixedColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              selectedIconTheme: IconThemeData(color: Colors.cyan),
              selectedLabelStyle: TextStyle(color: Colors.cyan),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Ionicons.wallet_outline),
                  label: 'Wallet',
                  activeIcon: Icon(Ionicons.wallet),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(MaterialCommunityIcons.account_cash),
                  icon: Icon(MaterialCommunityIcons.account_cash_outline),
                  label: 'Accounts',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Ionicons.git_pull_request),
                  icon: Icon(Ionicons.git_pull_request_outline),
                  label: 'Request loan',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Ionicons.cash),
                  icon: Icon(Ionicons.cash_outline),
                  label: 'Fixed Deposits',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Ionicons.person),
                  icon: Icon(Ionicons.person_outline),
                  label: 'Profile',
                ),
              ],
            ),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
          return Center(
            child: Text('No customer logged in'),
          );
        }
      },
    );
  }
}

class WalletScreen extends StatefulWidget {
  const WalletScreen({
    Key? key,
    required this.customer,
  }) : super(key: key);
  final Customer customer;

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Person>(
        future: getPersonByAadhar(widget.customer.aadharNo),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: EdgeInsets.fromLTRB(20, 64.0, 20, 0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ${snapshot.data!.firstName}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TotalAssetsCard(customer: widget.customer),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TransactionPage();
                                },
                              ),
                            );
                          },
                          icon: Icon(
                            Ionicons.add_circle_outline,
                            color: Colors.cyan,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FutureBuilder<List<Transaction>>(
                      future: getTransactionsByCustId(widget.customer.custId),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                            height: 240,
                            child: ListView.builder(
                              // physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              // itemExtent: 10,

                              itemCount: snapshot.data!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: TransactionCard(
                                    transaction: snapshot.data![index],
                                  ),
                                );
                              },
                            ),
                          );
                        } else {
                          return Container(
                            height: 150,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class TotalAssetsCard extends StatelessWidget {
  final Customer customer;
  const TotalAssetsCard({
    Key? key,
    required this.customer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[700],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: FutureBuilder<AssetsLiabilities>(
          future: getAssetsLiabilities(customer.custId),
          builder: (context, snapshot) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Total Assets',
                    style: TextStyle(
                      fontSize: 16,
                      // fontFamily: 'Poppins',
                      color: Colors.cyan,
                    ),
                  ),
                  SizedBox(height: 8),
                  snapshot.hasData
                      ? Text(
                          '₹${NumberFormat().format(snapshot.data!.assets)}',
                          style: TextStyle(
                              fontSize: 56,
                              // fontFamily: 'Poppins',
                              height: 1.2,
                              // color: CustomColors.black90,
                              fontWeight: FontWeight.bold),
                        )
                      : CircularProgressIndicator(),
                  SizedBox(height: 8),
                  Container(
                    child: Divider(color: Colors.cyan[300]),
                    width: double.infinity,
                  ),
                  SizedBox(height: 8),
                  snapshot.hasData
                      ? Text(
                          'Total Liabilities: ₹${NumberFormat().format(snapshot.data!.liabilities)}',
                          style: TextStyle(
                              fontSize: 16, color: Colors.blueGrey[200]),
                        )
                      : CircularProgressIndicator(),
                ],
              ),
            );
          }),
    );
  }
}

// TransactionCard
class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[700],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 2 / 3,
        height: 200,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${transaction.type}',
                  style: TextStyle(
                    fontSize: 16,
                    // fontFamily: 'Poppins',
                    color: Colors.cyan,
                  ),
                ),
                transaction.status == "C"
                    ? Icon(
                        Feather.check_circle,
                        color: Colors.greenAccent,
                      )
                    : transaction.status == "F"
                        ? Icon(Feather.x_circle, color: Colors.red)
                        : Icon(AntDesign.exclamationcircleo,
                            color: Colors.orange),
              ],
            ),
            SizedBox(height: 8),
            Text(
              '${transaction.type == "CREDIT" ? "+" : "-"} ₹${NumberFormat().format(transaction.amount)}',
              style: TextStyle(
                fontSize: 28,
                // fontFamily: 'Poppins',
                height: 1.2,
                // color: CustomColors.black90,
                color: transaction.type == "CREDIT"
                    ? Colors.greenAccent
                    : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Container(
              child: Divider(color: Colors.cyan[300]),
              width: double.infinity,
            ),
            SizedBox(height: 8),
            Text(
              transaction.type == "CREDIT" ? 'To:' : 'From:',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey[200]),
            ),
            SizedBox(height: 8),
            Text(
              '${transaction.account.toString().substring(0, 4)} ${transaction.account.toString().substring(4, 8)}',
              style: TextStyle(
                fontSize: 20,
                // fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '${transaction.dateTime.toString().split(" ")[0]}',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey[200]),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Spacer(),
                Text(
                  "Transaction Id: ${transaction.transactionId}",
                  style: TextStyle(fontSize: 12, color: Colors.blueGrey[200]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
