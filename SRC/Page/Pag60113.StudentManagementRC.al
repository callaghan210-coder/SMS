page 60113 "Student Management RC"
{
    Caption = 'Student Management RC';
    PageType = RoleCenter;
    layout
    {
        area(rolecenter)
        {
            part(Control76; "Headline RC Accountant")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Student Management Cue"; "Student Management cue")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group("Student Application")
            {
                action("Student List")
                {
                    ApplicationArea = All;
                    RunObject = page "Student List";
                }

            }
            group("Student Statistics")
            {

            }
            group(Setups)
            {
                action("Academic Year")
                {
                    ApplicationArea = all;
                    RunObject = page "Academic Year";
                }
                action(Semester)
                {
                    ApplicationArea = all;
                    RunObject = page Semester;
                }
                action("Unit Setup")
                {
                    ApplicationArea = all;
                    RunObject = page "Unit Setup";
                }
                action("Course List")
                {
                    ApplicationArea = all;
                    RunObject = page "Course List";
                }
                action("Student Profile")
                {
                    ApplicationArea = all;
                    RunObject = page "Student Profile";
                    Caption = 'Student Profile';

                }
                action("Pending Approvals")
                {
                    ApplicationArea = all;
                    RunObject = page "Pending Student List";
                    Caption = 'Pending Approvals';

                }
                action("Approved Students")
                {
                    ApplicationArea = all;
                    RunObject = page "Approved Student List";
                    Caption = 'Approved Students';

                }
                action("Department")
                {
                    ApplicationArea = all;
                    RunObject = page Department;
                    Caption = 'Department';

                }
            }
        }
        area(Embedding)
        {
            action("Student Listx")
            {
                Caption = 'Student List';
                ApplicationArea = All;
                RunObject = page "Student List";
            }
            action("Academic Yearx")
            {
                Caption = 'Academic Year';
                ApplicationArea = all;
                RunObject = page "Academic Year";
            }
            action(Semesterx)
            {
                Caption = 'Semester';
                ApplicationArea = all;
                RunObject = page Semester;
            }
            action("Unit Setupx")
            {
                Caption = 'Unit Setup';
                ApplicationArea = all;
                RunObject = page "Unit Setup";
            }
            action("Course Listx")
            {
                Caption = 'Course list';
                ApplicationArea = all;
                RunObject = page "Course List";
            }
            action("Student Profilex")
            {
                ApplicationArea = all;
                RunObject = page "Student Profile";
                Caption = 'Student Profile';

            }
            action("Pending Approvalsx")
            {
                ApplicationArea = all;
                RunObject = page "Pending Student List";
                Caption = 'Pending Approvals';

            }
            action("Approved Studentsx")
            {
                ApplicationArea = all;
                RunObject = page "Approved Student List";
                Caption = 'Approved Students';

            }
            action("Departmentx")
            {
                ApplicationArea = all;
                RunObject = page Department;
                Caption = 'Department';

            }

        }

        area(creation)
        {
            action("Student Listxx")
            {
                Caption = 'Student List';
                ApplicationArea = All;
                RunObject = page "Student List";
            }
            action("Academic Yearxx")
            {
                Caption = 'Academic Year';
                ApplicationArea = all;
                RunObject = page "Academic Year";
            }
            action(Semesterxx)
            {
                Caption = 'Semester';
                ApplicationArea = all;
                RunObject = page Semester;
            }
            action("Unit Setupxx")
            {
                Caption = 'Unit Setup';
                ApplicationArea = all;
                RunObject = page "Unit Setup";
            }
            action("Course Listxx")
            {
                Caption = 'Course list';
                ApplicationArea = all;
                RunObject = page "Course List";
            }
            action("Student Profilexx")
            {
                ApplicationArea = all;
                RunObject = page "Student Profile";
                Caption = 'Student Profile';

            }
            action("Pending Approvalsxx")
            {
                ApplicationArea = all;
                RunObject = page "Pending Student List";
                Caption = 'Pending Approvals';

            }
            action("Approved Studentsxx")
            {
                ApplicationArea = all;
                RunObject = page "Approved Student List";
                Caption = 'Approved Students';

            }
            action("Departmentxx")
            {
                ApplicationArea = all;
                RunObject = page Department;
                Caption = 'Department';

            }
        }
        area(processing)
        {
            group("Student Applicationx")
            {
                Caption = 'Student Application';
                action("Student Listxxx")
                {
                    Caption = 'Student List';
                    ApplicationArea = All;
                    RunObject = page "Student List";
                }

            }
            group(Setupx)
            {
                Caption = 'Setups';
                action("Academic Yearxxx")
                {
                    Caption = 'Academic Year';
                    ApplicationArea = all;
                    RunObject = page "Academic Year";
                }
                action(Semesterxxx)
                {
                    Caption = 'Semester';
                    ApplicationArea = all;
                    RunObject = page Semester;
                }
                action("Unit Setupxxx")
                {
                    Caption = 'Unit Setup';
                    ApplicationArea = all;
                    RunObject = page "Unit Setup";
                }
                action("Course Listxxx")
                {
                    Caption = 'Course list';
                    ApplicationArea = all;
                    RunObject = page "Course List";
                }
                action("Student Profilexxx")
                {
                    ApplicationArea = all;
                    RunObject = page "Student Profile";
                    Caption = 'Student Profile';

                }
                action("Pending Approvalsxxx")
                {
                    ApplicationArea = all;
                    RunObject = page "Pending Student List";
                    Caption = 'Pending Approvals';

                }
                action("Approved Studentsxxx")
                {
                    ApplicationArea = all;
                    RunObject = page "Approved Student List";
                    Caption = 'Approved Students';

                }
                action("Departmentxxx")
                {
                    ApplicationArea = all;
                    RunObject = page Department;
                    Caption = 'Department';

                }

            }


        }
    }
}
