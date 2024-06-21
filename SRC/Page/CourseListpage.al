page 60114 "Course List"
{
    PageType = List;
    SourceTable = "Course";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Course ID")
                {
                }
                field("Course Title"; Rec."Course Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Title field.', Comment = '%';
                }
                field("Course Duration"; Rec."Course Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Duration (Years) field.', Comment = '%';
                }
            }
        }
    }
}
