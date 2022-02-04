--======================================================================================
PRINT 'Tipos de datos'		
GO
--======================================================================================
 

-- Tipos de datos enteros
 
-- BIT 1 bit ----------------------------------------------------------------------------
DECLARE @DataBit BIT

SET @DataBit = 0								
PRINT @DataBit 
SET @DataBit = 1								
PRINT @DataBit


-- TINYINT 1 byte ----------------------------------------------------------------------
DECLARE @DataTinyInt TINYINT

SET @DataTinyInt = 0						
PRINT @DataTinyInt 
SET @DataTinyInt = 255						   
PRINT @DataTinyInt


-- SMALLYINT 1 byte --------------------------------------------------------------------
DECLARE @DataSmallInt SMALLINT

SET @DataSmallInt = -32768				
PRINT @DataSmallInt 
SET @DataSmallInt = 32767						
PRINT @DataSmallInt 


-- INT 4 byte --------------------------------------------------------------------------
DECLARE @DataInt INT

SET @DataInt = -2147483648						
PRINT @DataInt
SET @DataInt = 2147483647						
PRINT @DataInt


-- BIGINT 8 byte -----------------------------------------------------------------------
DECLARE @DataBigInt BIGINT

SET @DataBigInt = -9223372036854775808   	    
PRINT @DataBigInt
SET @DataBigInt = 9223372036854775807		    
PRINT @DataBigInt


-- Tipos de datos de escala y precisi�n fija
/*
	Estos tipos de datos son �tiles para representar n�meros con exactitud.
	EstoS tipos de datos son �til para cualquier c�lculo financiero.
    Es posible que deba especificar la Precisi�n [p] y la Escala [s].
*/
 
-- NUMERIC ------------------------------------------------------------------------------
DECLARE @DataNumeric NUMERIC(20,8) = 100        
PRINT @DataNumeric
   

-- DECIMAL ------------------------------------------------------------------------------ 
DECLARE @DataDecimal DECIMAL(20,8) = 100.00      
PRINT @DataDECIMAL


-- Tipos de datos fijos monetarios	
/*
	Estos tipos de datos est�n destinados espec�ficamente a la contabilidad.
	Siempre ver� 2 d�gitos despu�s del lugar decimal.
*/
-- SMALLMONEY 1 bit ---------------------------------------------------------------------
DECLARE @DataSmallMoney SMALLMONEY = 100         
PRINT @DataSmallMoney


-- MONEY 1 bit -------------------------------------------------------------------------- 
DECLARE @DataMoney MONEY = 100					 
PRINT @DataMoney


-- Cadenas de caracteres
-- CHAR  --------------------------------------------------------------------------------
DECLARE @DataChar CHAR(10) = 'DAVID MOODY11'                     
SELECT @DataChar AS [CHAR]


-- VARCHAR ------------------------------------------------------------------------------
DECLARE @DataVarchar VARCHAR(10) = 'DAVID'                     
SELECT @DataVarchar AS [VARCHAR]

/*
	Difenrencia entre CHAR and VARCHAR
	Se definen en t�rminos de bytes, no de caracteres.
	No puede almacenar Unicode.
	Son de longitud fija que reservar espacio de almacenamiento para el n�mero 
	de caracteres que especifique, incluso si no utiliza todo el espacio.
*/


-- NCHAR --------------------------------------------------------------------------------
DECLARE @DataNChar NCHAR(15) = 'DAVID MOODY'                     
SELECT  @DataNChar AS [NCHAR]


-- NVARCHAR -----------------------------------------------------------------------------
DECLARE @DataNVARCHAR NVARCHAR(15) = 'D'                     
SELECT @DataNVARCHAR AS [NVARCHAR]

/*
	Difenrencia entre NCHAR and NVARCHAR
	NCHAR y NVARCHAR puede almacenar Unicode.
*/

/*
	VARCHAR y NVARCHAR Son de longitud variable
	que s�lo utilizar� espacios para los caracteres que almacene.
*/