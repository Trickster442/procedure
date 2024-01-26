table 50899 "Trainee Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Symbol; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(2; "Full name"; Code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Age"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; Detail; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Setup Page";

        }
    }

    keys
    {
        key(Key1; Symbol)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        setupPage: Record "Setup Page";
        serManage: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if Symbol = ' ' then begin
            setupPage.Get();
            serManage.InitSeries(setupPage.COD, setupPage.COD, 0D, Symbol, Detail);
        end;

    end;



}