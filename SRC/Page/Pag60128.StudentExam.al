page 60128 "Student Exam"
{
    Caption = 'Student Exam';
    PageType = List;
    SourceTable = "Student Exam";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("StudentNo."; Rec."StudentNo.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StudentNo. field.', Comment = '%';
                }
                field(CourseCode; Rec.CourseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CourseCode field.', Comment = '%';
                }
                field(ExamID; Rec.ExamID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ExamID field.', Comment = '%';
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                }
                field(UnitCode; Rec.UnitCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the UnitCode field.', Comment = '%';
                }
                field(ExamDate; Rec.ExamDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ExamDate field.', Comment = '%';
                }
                field(ExamResult; Rec.ExamResult)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ExamResult field.', Comment = '%';
                }
                field(SupplementaryRequired; Rec.SupplementaryRequired)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SupplementaryRequired field.', Comment = '%';
                }
            }
        }
    }
}
