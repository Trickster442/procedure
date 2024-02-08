report 50129 "CustomerReportPractise"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\report\CustomerReport.RDL';
    
    
    dataset
    {
        dataitem(Customer;Customer)
        {
            column(Name;Name)
            {
                
            }

            column(Address;Address){

            }

            column(Contact;Contact)
            {
                
            }
        }
    }
    
   
    
    
}