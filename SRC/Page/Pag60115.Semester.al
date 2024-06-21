page 60115 Semester
{
    ApplicationArea = All;
    Caption = 'Semester';
    PageType = List;
    SourceTable = "Semester";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Semester Code"; Rec."Semester Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Semester Code field.', Comment = '%';
                }
                field("Semester Description"; Rec."Semester Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Semester Description field.', Comment = '%';
                }
            }
        }
    }
}
