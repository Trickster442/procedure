report 50131 "Vendor Practise Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC; 
    RDLCLayout = '.\report\DemoForVendorReport.RDL';

    
    dataset
    {
        dataitem(Vendor;Vendor)
        {
            column(Name;Name)
            {
                
            }
            column(Country_Region_Code;"Country/Region Code")
            {
                
            }
            column(Contact;Contact){
                
            }
        }
    }
    
    
}