table 50550 "Patient Appointment Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "S.N"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; "Name"; Code[50])
        {
            DataClassification = ToBeClassified;

        }

        field(3; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,"Male","Female";
        }

        field(5; Disease; Text[2000])
        {
            DataClassification = ToBeClassified;
        }

        field(10; Symbol; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "S.N")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        inn: Record "Sales & Receivables Setup";
        noSer: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "S.N" = '' then begin
            inn.Get();
            noSer.InitSeries(inn."Patient Code", inn."Patient Code", 0D, "S.N", Symbol);
        end;

    end;


}