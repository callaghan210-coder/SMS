page 60124 "Student Billing Card"
{
    Caption = 'Student Billing';
    PageType = Card;
    SourceTable = "Student Billing";

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
                field(CourseCode; Rec.CourseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CourseCode field.', Comment = '%';
                }
                field(ActivityFee; Rec.ActivityFee)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ActivityFee field.', Comment = '%';
                }
                field(LibraryFee; Rec.LibraryFee)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LibraryFee field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(TuitionFee; Rec.TuitionFee)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TuitionFee field.', Comment = '%';
                }
                field(TotalAmount; Rec.TotalAmount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TotalAmount field.', Comment = '%';
                }
            }
        }
    }
}
