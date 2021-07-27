using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Trident.Bo
{
    public class ReceiptBO
    {
        #region Receipt Class Properties

        public const string RECEIPT_TABLE = "Receipt";
        public const string RECEIPT_ID = "Id";
        public const string RECEIPT_CHALLANID = "ChallanId";
        public const string RECEIPT_PAYMENTMODE = "PaymentMode";
        public const string RECEIPT_PAIDAMOUNT = "PaidAmount";
        public const string RECEIPT_RECEIPTNO = "ReceiptNo";
        public const string RECEIPT_MOBILENO = "MobileNo";
        public const string RECEIPT_EMAILID = "EmailId";
        public const string RECEIPT_ISDELETED = "IsDeleted";
        public const string RECEIPT_CREATEDBY = "CreatedBy";
        public const string RECEIPT_CREATEDDATE = "CreatedDate";
        public const string RECEIPT_LASTMODIFIEDBY = "LastModifiedBy";
        public const string RECEIPT_LASTMODIFIEDDATE = "LastModifiedDate";

        private int intId = 0;
        private string strChallanId = string.Empty;
        private string strPaymentMode = string.Empty;
        private decimal dcPaidAmount;
        private string strReceiptNo = string.Empty;
        private string strMobileNo = string.Empty;
        private string strEmailId = string.Empty;
        private bool blIsDeleted = false;
        private int intCreatedBy = 0;
        private DateTime dtCreatedDate;
        private int intLastModifiedBy = 0;
        private DateTime dtLastModifiedDate;

        #endregion

        #region ---Properties---
        public int Id
        {
            get { return intId; }
            set { intId = value; }
        }
        public string ChallanId
        {
            get { return strChallanId; }
            set { strChallanId = value; }
        }
        public string PaymentMode
        {
            get { return strPaymentMode; }
            set { strPaymentMode = value; }
        }
        public decimal PaidAmount {
            get { return dcPaidAmount; }
            set { dcPaidAmount = value; }
        }
        public string ReceiptNo
        {
            get { return strReceiptNo; }
            set { strReceiptNo = value; }
        }
        public string MobileNo
        {
            get { return strMobileNo; }
            set { strMobileNo = value; }
        }
        public string EmailId
        {
            get { return strEmailId; }
            set { strEmailId = value; }
        }
        public bool IsDeleted
        {
            get { return blIsDeleted; }
            set { blIsDeleted = value; }
        }
        public int CreatedBy
        {
            get { return intCreatedBy; }
            set { intCreatedBy = value; }
        }
        public DateTime CreatedDate
        {
            get { return dtCreatedDate; }
            set { dtCreatedDate = value; }
        }
        public int LastModifiedBy
        {
            get { return intLastModifiedBy; }
            set { intLastModifiedBy = value; }
        }
        public DateTime LastModifiedDate
        {
            get { return dtLastModifiedDate; }
            set { dtLastModifiedDate = value; }
        }

        #endregion
    }
}