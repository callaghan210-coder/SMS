table 60121 "Student Payment"
{
    Caption = 'Student Payment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "PaymentID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "StudentNo."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Application"."Student No.";
        }
        field(3; "BillingID"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Student Billing"."BillingID";
        }
        field(4; "PaymentDate"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "PaymentAmount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "ReceiptNo."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "PaymentID")
        {
            Clustered = true;
        }
    }
}


