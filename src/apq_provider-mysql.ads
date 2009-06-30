

---------------
-- Ada Works --
---------------
with Aw_Config;

---------
-- APQ --
---------
with APQ_Provider;


package APQ_Provider.MySQL is


	function Factory( C : in Aw_Config.Config_File ) return APQ.Connection_Ptr;

end APQ_Provider.MySQL;
