page 60122 Department
{
    Caption = 'Department';
    PageType = List;
    SourceTable = Departments;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Dep Code"; Rec."Dep Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dep Code field.', Comment = '%';
                }
                field("Dep Title"; Rec."Dep Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dep Title field.', Comment = '%';
                }
            }
        }
    }
}
