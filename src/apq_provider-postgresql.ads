

---------------
-- Ada Works --
---------------
with KOW_Config;

---------
-- APQ --
---------
with APQ_Provider;


package APQ_Provider.postgresql is


	function Factory( C : in KOW_Config.Config_File ) return APQ.Connection_Ptr;

end APQ_Provider.postgresql;
