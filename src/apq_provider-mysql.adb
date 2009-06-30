

---------------
-- Ada Works --
---------------
with Aw_Config;

---------
-- APQ --
---------
with APQ_Provider;
with APQ.MySQL.Client;


package body APQ_Provider.MySQL is


	function Main_Factory is new APQ_Provider.Generic_Connection_Factory( Connection_Type => APQ.MySQL.Client.Connection_Type );

	function Factory( C : in Aw_Config.Config_File ) return APQ.Connection_Ptr is
	begin
		return Main_Factory( C );
	end Factory;

begin

	APQ_Provider.Factory_Registry.Register_Factory( APQ.Engine_MySQL, Factory'Access );
end APQ_Provider.MySQL;
