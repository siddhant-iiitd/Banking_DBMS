const db = require("./db");
const helper = require("../helper");

async function getLoansByBid(branchId) {
  const rows = await db.runQuery(
    `SELECT * from loanrequests l where l.status = \'P\' AND branchid = ${branchId}`
  );
  const data = helper.emptyOrRows(rows);

  return {
    data,
  };
}

async function getFDsByBid(branchId) {
  const rows = await db.runQuery(
    `SELECT * from fixeddeposit`
  );
  const data = helper.emptyOrRows(rows);

  return {
    data,
  };
}

async function rejectLoan(requestID) {
    console.log(requestID);
    const rows = await db.runQuery(
      `UPDATE loanrequests SET status = 'F' WHERE requestid = ${requestID};`
    );
    const data = helper.emptyOrRows(rows);

    return {
        data,
    }
}

async function approveLoan(requestID) {
    console.log(requestID);
    const rows = await db.runQuery(
      `UPDATE loanrequests SET status = 'C' WHERE requestid = ${requestID};`
    );
    const data = helper.emptyOrRows(rows);

    return {
        data,
    }
}

module.exports = {
    getLoansByBid,
    rejectLoan,
    approveLoan,
    getFDsByBid,
};
