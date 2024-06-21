page 60118 "Student Management cue"
{
    Caption = 'Student Management';
    PageType = CardPart;
    SourceTable = "Student Management Cue";
    RefreshOnActivate = true;
    ShowFilter = false;

    layout
    {
        area(Content)
        {
            cuegroup("Student Application")
            {

                field("Student Applicant"; Rec."Student Applicant")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Student List";
                    ToolTip = 'Specifies the value of the Student Applicant field.', Comment = '%';
                }
            }
            cuegroup(Setup)
            {
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Units field.', Comment = '%';
                    DrillDownPageId = "Unit Setup";
                }
                field(Courses; Rec.Courses)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Courses field.', Comment = '%';
                    DrillDownPageId = "Course List";
                }
                field("Academic Year"; Rec."Academic Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Academic Year field.', Comment = '%';
                    DrillDownPageId = "Academic Year";
                }
                field(Semester; Rec.Semester)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Semester field.', Comment = '%';
                    DrillDownPageId = Semester;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;
}
