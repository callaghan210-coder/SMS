page 60126 "Student Payment Card"
{
    Caption = 'Student Payment Card';
    PageType = Card;
    SourceTable = "Student Payment";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("StudentNo."; Rec."StudentNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentNo. field.', Comment = '%';
                }
                field(BillingID; Rec.BillingID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BillingID field.', Comment = '%';
                }
                field(PaymentID; Rec.PaymentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PaymentID field.', Comment = '%';
                }
                field("ReceiptNo."; Rec."ReceiptNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ReceiptNo. field.', Comment = '%';
                }
                field(PaymentDate; Rec.PaymentDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PaymentDate field.', Comment = '%';
                }
                field(PaymentAmount; Rec.PaymentAmount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PaymentAmount field.', Comment = '%';
                }
            }
        }
    }
}
