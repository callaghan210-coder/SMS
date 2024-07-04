report 60110 "Student Receipt"
{
    Caption = 'Student Receipt';

    dataset
    {
        dataitem("Student Payments"; "Student Payment")
        {
            DataItemTableView = SORTING("StudentNo.");

            column("PaymentID"; "PaymentID")
            {
            }
            column("StudentName"; "StudentName")
            {
            }
            column("PaymentDate"; "PaymentDate")
            {
            }
            column("PaymentAmount"; "PaymentAmount")
            {
            }
            column("Description"; "Destription")
            {
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Group)
                {
                    Caption = 'Generate Receipt';
                    field("Student No."; "Student Payments"."StudentNo.")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specify the student number to generate the receipt for.';
                    }
                    field("Payment Date"; "Student Payments"."PaymentDate")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specify the date of the payment to generate the receipt for.';
                    }
                }
            }
        }
    }

    layout
    {
        area(content)
        {
            group(Group)
            {
                Caption = 'Student Receipt';
                field("Payment No."; "Student Payments"."No.")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; "Student Payments"."Student Name")
                {
                    ApplicationArea = All;
                }
                field("Payment Date"; "Student Payments"."Payment Date")
                {
                    ApplicationArea = All;
                }
                field("Amount"; "Student Payments"."Amount")
                {
                    ApplicationArea = All;
                }
                field("Description"; "Student Payments"."Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
