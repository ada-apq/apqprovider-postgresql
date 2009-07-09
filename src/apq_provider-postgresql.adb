

---------------
-- Ada Works --
---------------
with KOW_Config;

---------
-- APQ --
---------
with APQ_Provider;
with APQ.postgresql.Client;


package body APQ_Provider.postgresql is


	function Main_Factory is new APQ_Provider.Generic_Connection_Factory( Connection_Type => APQ.postgresql.Client.Connection_Type );

	function Factory( C : in KOW_Config.Config_File ) return APQ.Connection_Ptr is
	begin
		return Main_Factory( C );
	end Factory;

begin

	APQ_Provider.Factory_Registry.Register_Factory( APQ.Engine_postgresql, Factory'Access );
end APQ_Provider.postgresql;
