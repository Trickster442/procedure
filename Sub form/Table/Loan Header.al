table 51880 "Loan Header Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Loan Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(2; "Customer Id"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer";
            trigger OnValidate()
            var
                extract: Record "Customer";
            begin
                if extract.Get("Customer Id") then begin
                    "Customer Name" := extract.Name;
                end;

            end;
        }
        field(3; "Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; "Bank Acc No"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Bank Account";
        }
        field(5; "Bank Name"; Text[100])
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Bank Account".Name where("No." = field("Bank Acc No")));

        }
        field(6; "Loan Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Loan Start"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Loan Ended"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Number series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(10; "Total Loan Paid"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Loan Line"."Paid Amt" where("Loan No" = field("Loan Id")));


        }
    }

    keys
    {
        key(Key1; "Loan Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        setupTable: Record "Sales & Receivables Setup";
        numMan: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "Loan Id" = '' then begin
            setupTable.Get();
            numMan.InitSeries(setupTable."Customer Nos.", setupTable."Customer Nos.", 0D, "Loan Id", "Number series");
        end;

    end;



}