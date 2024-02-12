report 50210 "Customer Sales"
{
    ApplicationArea = All;
    Caption = 'Customer Sales';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'Customer Sales.docx';
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {
            }
            column(Address2; "Address 2")
            {
            }
            column(Balance; Balance)
            {
            }
            column(Contact; Contact)
            {
            }
            column(CreditAmount; "Credit Amount")
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
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
