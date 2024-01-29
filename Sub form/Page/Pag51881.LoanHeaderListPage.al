page 51881 "Loan Header List Page"
{
    ApplicationArea = All;
    Caption = 'Loan Header List Page';
    PageType = List;
    SourceTable = "Loan Header Table";
    UsageCategory = Lists;
    CardPageId = "Loan Header Card Page";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Loan Id"; Rec."Loan Id")
                {
                    ApplicationArea = All;
                }
                field("Customer Id"; Rec."Customer Id")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Bank Acc No"; Rec."Bank Acc No")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Start"; Rec."Loan Start")
                {
                    ApplicationArea = All;
                }
                field("Loan Ended"; Rec."Loan Ended")
                {
                    ApplicationArea = All;
                }
                field("Total Loan Paid";Rec."Total Loan Paid")
                {
                    ApplicationArea = All;
                    

                }
            }
        }
    }
}
