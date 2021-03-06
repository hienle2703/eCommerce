USE [ECOMM_C2C_SUB]
GO
/****** Object:  StoredProcedure [dbo].[sp_Admin_Info]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Admin_Info]
AS
BEGIN
SELECT [UsrId]
      ,[UsrName]
      ,[Login]
      ,[Password]
      ,[Active]
      ,[Email]
      ,[Address]
      ,[Phone]
      ,[DateAdd]
      ,[DateEdit]
	  ,[RoleName]
	FROM
    Usr u
INNER JOIN MstrDet m ON u.UsrId = m.MstrId
INNER JOIN MstrRole r ON m.RoleId = r.RoleId 
END




GO
/****** Object:  StoredProcedure [dbo].[sp_Cart_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Cart_Delete]
(
@CartID int
)
AS
BEGIN
DELETE FROM [dbo].[Cart] 
WHERE CartID = @CartID
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Cart_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**** PROCEDURE CART ****/

CREATE PROCEDURE [dbo].[sp_Cart_Insert]
(
@CusID int,
@IpAddress varchar(255)
)
AS
BEGIN
INSERT INTO [dbo].[Cart](CusID,IpAddress)
VALUES(@CusID,@IpAddress)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Cart_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Cart_Select]
(
@CartID int
)
AS
BEGIN
SELECT * FROM [dbo].[Cart] 
WHERE CartID = @CartID
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Cart_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Cart_Update]
(
@CartID int,
@CusID int,
@IpAddress varchar(255)
)
AS 
BEGIN 
UPDATE [dbo].[Cart]
SET
CusID=@CusID,
IpAddress=@IpAddress
WHERE CartID = @CartID 
END 






GO
/****** Object:  StoredProcedure [dbo].[sp_CartDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CartDet_Delete]
(
@CartId int,
@ShpId int,
@ProId int
)as
BEGIN 
DELETE FROM [dbo].[CartDet] 
WHERE CartID = @CartID AND ShpId=@ShpId AND ProId=@ProId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_CartDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**** PROCEDURE CARTDET ****/

CREATE PROCEDURE [dbo].[sp_CartDet_Insert]
(
@CartId int,
@ShpId int,
@ProId int,
@Qty int
)
AS
BEGIN
INSERT INTO [dbo].[CartDet](CartId,ShpId,ProId,Qty)
VALUES(@CartId,@ShpId,@ProId,@Qty)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_CartDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CartDet_Select]
(
@CartId int,
@ShpId int,
@ProId int
) as
BEGIN
SELECT * FROM [dbo].[CartDet] 
WHERE CartID = @CartID AND ShpId=@ShpId AND ProId=@ProId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_CartDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CartDet_Update]
(
@CartId int,
@ShpId int,
@ProId int,
@Qty int
)
AS 
BEGIN 
UPDATE [dbo].[CartDet]
SET
CartId=@CartId,
ShpId=@ShpId,
ProId=@ProId,
Qty=@Qty
WHERE CartID = @CartID AND ShpId=@ShpId AND ProId=@ProId
END 






GO
/****** Object:  StoredProcedure [dbo].[sp_Cus_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cus_Delete]
(
@CusId int
)
as
BEGIN
DELETE FROM [dbo].[Cus]
WHERE CusID=@CusId 
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Cus_Info]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Cus_Info]
AS
BEGIN
SELECT [UsrId]
      ,[UsrName]
      ,[Login]
      ,[Password]
      ,[Active]
      ,[Email]
      ,[Address]
      ,[Phone]
      ,[DateAdd]
      ,[DateEdit]
	FROM
    Usr u
INNER JOIN Cus c ON u.UsrId = c.CusId
END




GO
/****** Object:  StoredProcedure [dbo].[sp_Cus_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/**** PROCEDURE CUS ****/

CREATE PROCEDURE [dbo].[sp_Cus_Insert]
(
@CusId int
)
AS
BEGIN
INSERT INTO [dbo].[Cus](CusID)
VALUES(@CusId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Cus_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Cus_Select]
(
@CusID int
)
as
BEGIN
SELECT * FROM [dbo].[Cus] 
WHERE CusID=@CusId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Cus_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Cus_Update]
(
@CusId int
)
AS 
BEGIN 
UPDATE [dbo].[Cus]
SET
CusID=@CusId
WHERE CusID=@CusId 
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mer_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mer_Delete]
(
@MerId int
)
as
BEGIN
DELETE FROM [dbo].[Mer]
WHERE MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mer_Info]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mer_Info]
AS
BEGIN
	SELECT [UsrId]
      ,[UsrName]
      ,[Login]
      ,[Password]
      ,[Active]
      ,[Email]
      ,[Address]
      ,[Phone]
      ,[DateAdd]
      ,[DateEdit]
	FROM
    Usr u
INNER JOIN Mer m ON u.UsrId = m.MerId
END




GO
/****** Object:  StoredProcedure [dbo].[sp_Mer_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE MER ****/

CREATE PROCEDURE [dbo].[sp_Mer_Insert]
(
@MerId int
)
AS
BEGIN
INSERT INTO [dbo].[Mer](MerId)
VALUES(@MerId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mer_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mer_Select]
(
@MerId int
)
as
BEGIN
SELECT * FROM [dbo].[Mer] 
WHERE MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mer_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mer_Update]
(
@MerId int
)
AS 
BEGIN 
UPDATE [dbo].[Mer]
SET
MerId=@MerId
WHERE MerId=@MerId 
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mstr_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mstr_Delete]
(
@MstrId int,
@RoleId int
)
AS
BEGIN
DELETE FROM [dbo].[Mstr] 
WHERE MstrId=@MstrId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mstr_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE MSTR ****/

CREATE PROCEDURE [dbo].[sp_Mstr_Insert]
(
@MstrId int,
@RoleId int
)
AS
BEGIN
INSERT INTO [dbo].[Mstr](MstrId,RoleId)
VALUES(@MstrId,@RoleId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mstr_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mstr_Select]
(
@MstrId int,
@RoleId int
)
AS
BEGIN
SELECT * FROM [dbo].[Mstr] 
WHERE MstrId=@MstrId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Mstr_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Mstr_Update]
(
@MstrId int,
@RoleId int
)
AS 
BEGIN 
UPDATE [dbo].[Mstr]
SET
MstrId=@MstrId,
RoleId=@RoleId
WHERE MstrId=@MstrId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_MstrRole_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_MstrRole_Delete]
(
@RoleId int,
@RoleName nvarchar(255)
)
AS
BEGIN
DELETE FROM [dbo].[MstrRole] 
WHERE RoleId=@RoleId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_MstrRole_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE MSTRROLE ****/

CREATE PROCEDURE [dbo].[sp_MstrRole_Insert]
(
@RoleId int,
@RoleName nvarchar(255)
)
AS
BEGIN
INSERT INTO [dbo].[MstrRole](RoleId,RoleName)
VALUES(@RoleId,@RoleName)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_MstrRole_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_MstrRole_Select]
(
@RoleId int,
@RoleName nvarchar(255)
)
AS
BEGIN
SELECT * FROM [dbo].[MstrRole] 
WHERE RoleId=@RoleId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_MstrRole_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_MstrRole_Update]
(
@RoleId int,
@RoleName nvarchar(255)
)
AS 
BEGIN 
UPDATE [dbo].[MstrRole]
SET
RoleId=@RoleId,
RoleName=@RoleName
WHERE RoleId=@RoleId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProBrand_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProBrand_Delete]
(
@BrandId int
)
AS
BEGIN
DELETE FROM [dbo].[ProBrand] 
WHERE BrandId=@BrandId
END





GO
/****** Object:  StoredProcedure [dbo].[sp_ProBrand_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProBrand_Insert]
(
@BrandId int,
@BrandName nvarchar(255)
)
AS
BEGIN
INSERT INTO [dbo].[ProBrand](BrandId,BrandName)
VALUES(@BrandId,@BrandName)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProBrand_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProBrand_Select]
(
@BrandId int
)
AS
BEGIN
SELECT * FROM [dbo].[ProBrand] 
WHERE BrandId=@BrandId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProBrand_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProBrand_Update]
(
@BrandId int,
@BrandName nvarchar(255)
)
AS 
BEGIN 
UPDATE [dbo].[ProBrand]
SET
BrandName=@BrandName
WHERE BrandId=@BrandId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProCat_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProCat_Delete]
(
@CatId int
)
AS
BEGIN
DELETE FROM [dbo].[ProCat]
WHERE CatId=@CatId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProCat_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE PROCAT****/

CREATE PROCEDURE [dbo].[sp_ProCat_Insert]
(
@CatId int,
@CatName nvarchar(255),
@Active bit,
@DateAdd datetime,
@DateEdit datetime
)
AS
BEGIN
INSERT INTO [dbo].[ProCat](CatId,CatName,Active,DateAdd,DateEdit)
VALUES(@CatId,@CatName,@Active,@DateAdd,@DateEdit)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProCat_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProCat_Select]
(
@CatId int
)
AS
BEGIN
SELECT * FROM [dbo].[ProCat]
WHERE CatId=@CatId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProCat_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProCat_Update]
(
@CatId int,
@CatName nvarchar(255),
@Active bit,
@DateAdd datetime,
@DateEdit datetime
)
AS 
BEGIN 
UPDATE [dbo].[ProCat]
SET
CatName=@CatName,
Active=@Active,
DateAdd=@DateAdd,
DateEdit=@DateEdit
WHERE CatId=@CatId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProColor_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProColor_Delete]
(
@ColorId int
)
AS
BEGIN
DELETE FROM [dbo].[ProColor]
WHERE ColorId=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProColor_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE PROCOLOR****/

CREATE PROCEDURE [dbo].[sp_ProColor_Insert]
(
@ColorId int,
@ColorName nvarchar(255),
@ColorImg nvarchar(255)
)
AS
BEGIN
INSERT INTO [dbo].[ProColor](ColorId,ColorName,ColorImg)
VALUES(@ColorId,@ColorName,@ColorImg)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProColor_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProColor_Select]
(
@ColorId int
)
AS
BEGIN
SELECT * FROM [dbo].[ProColor]
WHERE ColorId=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProColor_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProColor_Update]
(
@ColorId int,
@ColorName nvarchar(255),
@ColorImg nvarchar(255)
)
AS 
BEGIN 
UPDATE [dbo].[ProColor]
SET
ColorId=@ColorId,
ColorName=@ColorName,
ColorImg=@ColorImg
WHERE ColorId=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProDet_Delete]
(
@ShpId int,
@ProId int,
@ColorId int,
@SizeId int
)
AS
BEGIN
DELETE FROM [dbo].[ProDet]
WHERE ShpId=@ShpId AND ProId=@ProId AND ColorId=@ColorId AND SizeID=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE PRODET****/

CREATE PROCEDURE [dbo].[sp_ProDet_Insert]
(
@ShpId int,
@ProId int,
@ColorId int,
@SizeId int
)
AS
BEGIN
INSERT INTO [dbo].[ProDet](ShpId,ProId,ColorId,SizeId)
VALUES(@ShpId,@ProId,@ColorId,@SizeId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProDet_Select]
(
@ShpId int,
@ProId int,
@ColorId int,
@SizeId int
)
AS
BEGIN
SELECT * FROM [dbo].[ProDet]
WHERE ShpId=@ShpId AND ProId=@ProId AND ColorId=@ColorId AND SizeID=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProDet_Update]
(
@ShpId int,
@ProId int,
@ColorId int,
@SizeId int
)
AS 
BEGIN 
UPDATE [dbo].[ProDet]
SET
ShpId=@ShpId,
ProId=@ProId,
ColorId=@ColorId,
SizeID=@ColorId
WHERE ShpId=@ShpId AND ProId=@ProId AND ColorId=@ColorId AND SizeID=@ColorId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProSize_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProSize_Delete]
(
@SizeId int
)
AS
BEGIN
DELETE FROM [dbo].[ProSize]
WHERE SizeId=@SizeId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProSize_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE PROSIZE****/

CREATE PROCEDURE [dbo].[sp_ProSize_Insert]
(
@SizeId int,
@SizeName nvarchar(255),
@SizeImg nvarchar(255)
)
AS
BEGIN
INSERT INTO [dbo].[ProSize](SizeId,SizeName,SizeImg)
VALUES(@SizeId,@SizeName,@SizeImg)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProSize_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProSize_Select]
(
@SizeId int
)
AS
BEGIN
SELECT * FROM [dbo].[ProSize]
WHERE SizeId=@SizeId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_ProSize_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProSize_Update]
(
@SizeId int,
@SizeName nvarchar(255),
@SizeImg nvarchar(255)
)
AS 
BEGIN 
UPDATE [dbo].[ProSize]
SET
SizeId=@SizeId,
SizeName=@SizeName,
SizeImg=@SizeImg
WHERE SizeId=@SizeId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Rcpt_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Rcpt_Delete]
(
@RcptId int
)
AS
BEGIN
DELETE FROM [dbo].[Rcpt]
WHERE RcptId=@RcptId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Rcpt_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPT****/

CREATE PROCEDURE [dbo].[sp_Rcpt_Insert]
(
@RcptId int,
@UsrAdd int,
@UsrEdit int,
@DateAdd datetime,
@DateEdit datetime
)
AS
BEGIN
INSERT INTO [dbo].[Rcpt](UsrAdd,UsrEdit,DateAdd,DateEdit)
VALUES(@UsrAdd,@UsrEdit,@DateAdd,@DateEdit)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Rcpt_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Rcpt_Select]
(
@RcptId int
)
AS
BEGIN
SELECT * FROM [dbo].[Rcpt]
WHERE RcptId=@RcptId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Rcpt_Sub_Det]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Rcpt_Sub_Det]
AS
BEGIN 
	SELECT r.RcptId,sp.ShpName,u.UsrName,  sb.SubContent, sb.Price,d.Quantity, (sb.DurDay*d.Quantity) As 'Days' FROM Rcpt r
	INNER JOIN RcptSub s On r.RcptId = s.RcptSubId
	INNER JOIN RcptSubDet d ON d.RcptSubId = s.RcptSubId
	INNER JOIN Sub sb ON sb.SubId = d.SubId 
	INNER JOIN Usr u ON u.UsrId = d.MerId
	INNER JOIN Shp sp ON sp.MerId = d.MerId
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Rcpt_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Rcpt_Update]
(
@RcptId int,
@UsrAdd int,
@UsrEdit int,
@DateAdd datetime,
@DateEdit datetime
)
AS 
BEGIN 
UPDATE [dbo].[Rcpt]
SET
UsrAdd=@UsrAdd,
UsrEdit=@UsrEdit,
DateAdd=@DateAdd,
DateEdit=@DateEdit
WHERE RcptId=@RcptId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuy_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuy_Delete]
(
@RcptBuyId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptBuy]
WHERE RcptBuyId=@RcptBuyId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuy_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTBUY****/

CREATE PROCEDURE [dbo].[sp_RcptBuy_Insert]
(
@RcptBuyId int,
@CusId int
)
AS
BEGIN
INSERT INTO [dbo].[RcptBuy](RcptBuyId,CusId)
VALUES(@RcptBuyId,@CusId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuy_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuy_Select]
(
@RcptBuyId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptBuy]
WHERE RcptBuyId=@RcptBuyId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuy_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuy_Update]
(
@RcptBuyId int,
@CusId int
)
AS 
BEGIN 
UPDATE [dbo].[RcptBuy]
SET
RcptBuyId=@RcptBuyId,
CusId=@CusId
WHERE RcptBuyId=@RcptBuyId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyDet_Delete]
(
@RcptBuyId int,
@ShpId int,
@ProId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptBuyDet]
WHERE RcptBuyId=@RcptBuyId AND ShpId=@ShpId AND ProId=@ProId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTBUYDET****/

CREATE PROCEDURE [dbo].[sp_RcptBuyDet_Insert]
(
@RcptBuyId int,
@ShpId int,
@ProId int
)
AS
BEGIN
INSERT INTO [dbo].[RcptBuyDet](RcptBuyId,ShpId,ProId)
VALUES(@RcptBuyId,@ShpId,@ProId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyDet_Select]
(
@RcptBuyId int,
@ShpId int,
@ProId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptBuyDet]
WHERE RcptBuyId=@RcptBuyId AND ShpId=@ShpId AND ProId=@ProId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyDet_Update]
(
@RcptBuyId int,
@ShpId int,
@ProId int
)
AS 
BEGIN 
UPDATE [dbo].[RcptBuyDet]
SET
RcptBuyId=@RcptBuyId,
ShpId=@ShpId,
ProId=@ProId
WHERE RcptBuyId=@RcptBuyId AND ShpId=@ShpId AND ProId=@ProId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuySta_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuySta_Delete]
(
@StaId int,
@RcptBuyId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptBuySta]
WHERE StaId=@StaId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuySta_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTBUYSTA****/

CREATE PROCEDURE [dbo].[sp_RcptBuySta_Insert]
(
@StaId int,
@RcptBuyId int
)
AS
BEGIN
INSERT INTO [dbo].[RcptBuySta](StaId,RcptBuyId)
VALUES(@StaId,@RcptBuyId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuySta_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuySta_Select]
(
@StaId int,
@RcptBuyId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptBuySta]
WHERE StaId=@StaId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuySta_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuySta_Update]
(
@StaId int,
@RcptBuyId int
)
AS 
BEGIN 
UPDATE [dbo].[RcptBuySta]
SET
RcptBuyId=@RcptBuyId
WHERE StaId=@StaId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaDet_Delete]
(
@StaId int,
@StepId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptBuyStaDet]
WHERE StaId=@StaId AND StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTBUYSTADET****/

CREATE PROCEDURE [dbo].[sp_RcptBuyStaDet_Insert]
(
@StaId int,
@StepId int,
@IsDone bit
)
AS
BEGIN
INSERT INTO [dbo].[RcptBuyStaDet](StaId,StepId,IsDone)
VALUES(@StaId,@StepId,@IsDone)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaDet_Select]
(
@StaId int,
@StepId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptBuyStaDet]
WHERE StaId=@StaId AND StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaDet_Update]
(
@StaId int,
@StepId int,
@IsDone bit
)
AS 
BEGIN 
UPDATE [dbo].[RcptBuyStaDet]
SET
StaId=@StaId,
StepId=@StepId,
IsDone=@IsDone
WHERE StaId=@StaId AND StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaStep_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaStep_Delete]
(
@StepId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptBuyStaStep]
WHERE StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaStep_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTBUYSTASTEP****/

CREATE PROCEDURE [dbo].[sp_RcptBuyStaStep_Insert]
(
@StepId int,
@StepCont nvarchar(255),
@StepOrder int
)
AS
BEGIN
INSERT INTO [dbo].[RcptBuyStaStep](StepId,StepCont,StepOrder)
VALUES(@StepId,@StepCont,@StepOrder)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaStep_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaStep_Select]
(
@StepId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptBuyStaStep]
WHERE StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptBuyStaStep_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptBuyStaStep_Update]
(
@StepId int,
@StepCont nvarchar(255),
@StepOrder int
)
AS 
BEGIN 
UPDATE [dbo].[RcptBuyStaStep]
SET
StepId=@StepId,
StepCont=@StepCont,
StepOrder=@StepOrder
WHERE StepId=@StepId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSub_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSub_Delete]
(
@RcptSubId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptSub]
WHERE RcptSubId=@RcptSubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSub_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTSUB****/

CREATE PROCEDURE [dbo].[sp_RcptSub_Insert]
(
@RcptSubId int
)
AS
BEGIN
INSERT INTO [dbo].[RcptSub](RcptSubId)
VALUES(@RcptSubId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSub_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSub_Select]
(
@RcptSubId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptSub]
WHERE RcptSubId=@RcptSubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSub_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSub_Update]
(
@RcptSubId int
)
AS 
BEGIN 
UPDATE [dbo].[RcptSub]
SET
RcptSubId=@RcptSubId
WHERE RcptSubId=@RcptSubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSubDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSubDet_Delete]
(
@RcptSubId int,
@SubId int,
@MerId int
)
AS
BEGIN
DELETE FROM [dbo].[RcptSubDet]
WHERE RcptSubId=@RcptSubId AND SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSubDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE RCPTSUBDET****/

CREATE PROCEDURE [dbo].[sp_RcptSubDet_Insert]
(
@RcptSubId int,
@SubId int,
@MerId int
)
AS
BEGIN
INSERT INTO [dbo].[RcptSubDet](RcptSubId,SubId,MerId)
VALUES(@RcptSubId,@SubId,@MerId)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSubDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSubDet_Select]
(
@RcptSubId int,
@SubId int,
@MerId int
)
AS
BEGIN
SELECT * FROM [dbo].[RcptSubDet]
WHERE RcptSubId=@RcptSubId AND SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_RcptSubDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RcptSubDet_Update]
(
@RcptSubId int,
@SubId int,
@MerId int
)
AS 
BEGIN 
UPDATE [dbo].[RcptSubDet]
SET
RcptSubId=@RcptSubId,
SubId=@SubId,
MerId=@MerId
WHERE RcptSubId=@RcptSubId AND SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Shp_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Shp_Delete]
(
@ShpId int
)
AS
BEGIN
DELETE FROM [dbo].[Shp]
WHERE ShpId=@ShpId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Shp_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE SHP****/

CREATE PROCEDURE [dbo].[sp_Shp_Insert]
(
@ShpId int,
@MerId int,
@ShpName nvarchar(255),
@DateStart datetime,
@Active bit
)
AS
BEGIN
INSERT INTO [dbo].[Shp](ShpId,MerId,ShpName,DateStart,Active)
VALUES(@ShpId,@MerId,@ShpName,@DateStart,@Active)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Shp_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Shp_Select]
(
@ShpId int
)
AS
BEGIN
SELECT * FROM [dbo].[Shp]
WHERE ShpId=@ShpId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Shp_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Shp_Update]
(
@ShpId int,
@MerId int,
@ShpName nvarchar(255),
@DateStart datetime,
@Active bit
)
AS 
BEGIN 
UPDATE [dbo].[Shp]
SET
MerId=@MerId,
ShpName=@ShpName,
DateStart=@DateStart,
Active=@Active
WHERE ShpId=@ShpId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Sub_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sub_Delete]
(
@SubId int
)
AS
BEGIN
DELETE FROM [dbo].[Sub]
WHERE SubId=@SubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Sub_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE SUB****/

CREATE PROCEDURE [dbo].[sp_Sub_Insert]
(
@SubId int,
@SubContent nvarchar(255),
@DurDay int,
@Price nvarchar(225)
)
AS
BEGIN
INSERT INTO [dbo].[Sub](SubId,SubContent,DurDay,Price)
VALUES(@SubId,@SubContent,@DurDay,@Price)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Sub_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sub_Select]
(
@SubId int
)
AS
BEGIN
SELECT * FROM [dbo].[Sub]
WHERE SubId=@SubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Sub_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Sub_Update]
(
@SubId int,
@SubContent nvarchar(255),
@DurDay int,
@Price nvarchar(225)
)
AS 
BEGIN 
UPDATE [dbo].[Sub]
SET
SubContent=@SubContent,
DurDay=@DurDay,
Price=@Price
WHERE SubId=@SubId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_SubDet_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SubDet_Delete]
(
@SubId int,
@MerId int
)
AS
BEGIN
DELETE FROM [dbo].[SubDet]
WHERE SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_SubDet_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE SUBDET****/

CREATE PROCEDURE [dbo].[sp_SubDet_Insert]
(
@SubId int,
@MerId int,
@DateStart datetime,
@DateEnd datetime
)
AS
BEGIN
INSERT INTO [dbo].[SubDet](SubId,MerId,DateStart,DateEnd)
VALUES(@SubId,@MerId,@DateStart,@DateEnd)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_SubDet_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SubDet_Select]
(
@SubId int,
@MerId int
)
AS
BEGIN
SELECT * FROM [dbo].[SubDet]
WHERE SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_SubDet_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SubDet_Update]
(
@SubId int,
@MerId int,
@DateStart datetime,
@DateEnd datetime
)
AS 
BEGIN 
UPDATE [dbo].[SubDet]
SET
SubId=@SubId,
MerId=@MerId,
DateStart=@DateStart,
DateEnd=@DateEnd
WHERE SubId=@SubId AND MerId=@MerId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Usr_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Usr_Delete]
(
@UsrId int
)
AS
BEGIN
DELETE FROM [dbo].[Usr]
WHERE UsrId=@UsrId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Usr_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**** PROCEDURE USR****/

CREATE PROCEDURE [dbo].[sp_Usr_Insert]
(
@UsrId int,
@UserName nvarchar(255),
@Login varchar(255),
@Password varchar(255),
@Active bit,
@Email varchar(255),
@Address nvarchar(255),
@Phone varchar(255),
@DateAdd datetime,
@DateEdit datetime
)
AS
BEGIN
INSERT INTO [dbo].[Usr](UserName,Login,Password,Active,Email,Address,Phone,DateAdd,DateEdit)
VALUES(@UserName,@Login,@Password,@Active,@Email,@Address,@Phone,@DateAdd,@DateEdit)
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Usr_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Usr_Select]
(
@UsrId int
)
AS
BEGIN
SELECT * FROM [dbo].[Usr]
WHERE UsrId=@UsrId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_Usr_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Usr_Update]
(
@UsrId int,
@UserName nvarchar(255),
@Login varchar(255),
@Password varchar(255),
@Active bit,
@Email varchar(255),
@Address nvarchar(255),
@Phone varchar(255),
@DateAdd datetime,
@DateEdit datetime
)
AS 
BEGIN 
UPDATE [dbo].[Usr]
SET
UserName=@UserName,
Login=@Login,
Password=@Password,
Active=@Active,
Email=@Email,
Address=@Address,
Phone=@Phone,
DateAdd=@DateAdd,
DateEdit=@DateEdit
WHERE UsrId=@UsrId
END






GO
/****** Object:  StoredProcedure [dbo].[WebInfo_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebInfo_Delete] 
    @WebId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[WebInfo]
	WHERE  [WebId] = @WebId

	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebInfo_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebInfo_Insert] 
    @WebId int,
    @Name nvarchar(255) = NULL,
    @Address nvarchar(255) = NULL,
    @Email varchar(255) = NULL,
    @Phone varchar(255) = NULL,
    @WorkTime nvarchar(255) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[WebInfo] ([WebId], [Name], [Address], [Email], [Phone], [WorkTime])
	SELECT @WebId, @Name, @Address, @Email, @Phone, @WorkTime
	
	-- Begin Return Select <- do not remove
	SELECT [WebId], [Name], [Address], [Email], [Phone], [WorkTime]
	FROM   [dbo].[WebInfo]
	WHERE  [WebId] = @WebId
	-- End Return Select <- do not remove
               
	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebInfo_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebInfo_Select] 
    @WebId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [WebId], [Name], [Address], [Email], [Phone], [WorkTime] 
	FROM   [dbo].[WebInfo] 
	WHERE  ([WebId] = @WebId OR @WebId IS NULL) 

	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebInfo_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebInfo_Update] 
    @WebId int,
    @Name nvarchar(255) = NULL,
    @Address nvarchar(255) = NULL,
    @Email varchar(255) = NULL,
    @Phone varchar(255) = NULL,
    @WorkTime nvarchar(255) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[WebInfo]
	SET    [Name] = @Name, [Address] = @Address, [Email] = @Email, [Phone] = @Phone, [WorkTime] = @WorkTime
	WHERE  [WebId] = @WebId
	
	-- Begin Return Select <- do not remove
	SELECT [WebId], [Name], [Address], [Email], [Phone], [WorkTime]
	FROM   [dbo].[WebInfo]
	WHERE  [WebId] = @WebId	
	-- End Return Select <- do not remove

	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebSlide_Delete]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebSlide_Delete] 
    @id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[WebSlide]
	WHERE  [id] = @id

	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebSlide_Insert]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebSlide_Insert] 
    @id int,
    @WebId int = NULL,
    @Img nvarchar(255) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[WebSlide] ([id], [WebId], [Img])
	SELECT @id, @WebId, @Img
	
	-- Begin Return Select <- do not remove
	SELECT [id], [WebId], [Img]
	FROM   [dbo].[WebSlide]
	WHERE  [id] = @id
	-- End Return Select <- do not remove
               
	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebSlide_Select]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebSlide_Select] 
    @id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [id], [WebId], [Img] 
	FROM   [dbo].[WebSlide] 
	WHERE  ([id] = @id OR @id IS NULL) 

	COMMIT






GO
/****** Object:  StoredProcedure [dbo].[WebSlide_Update]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[WebSlide_Update] 
    @id int,
    @WebId int = NULL,
    @Img nvarchar(255) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[WebSlide]
	SET    [WebId] = @WebId, [Img] = @Img
	WHERE  [id] = @id
	
	-- Begin Return Select <- do not remove
	SELECT [id], [WebId], [Img]
	FROM   [dbo].[WebSlide]
	WHERE  [id] = @id	
	-- End Return Select <- do not remove

	COMMIT






GO
/****** Object:  Table [dbo].[Adv]    Script Date: 21/04/2019 1:09:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adv](
	[AdvId] [int] IDENTITY(1,1) NOT NULL,
	[AdvName] [nvarchar](50) NULL,
	[Desc] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Position] [varchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Adv] PRIMARY KEY CLUSTERED 
(
	[AdvId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[CusId] [int] NULL,
	[IpAddress] [varchar](255) NULL,
 CONSTRAINT [PK_UsersCustomersCarts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CartDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDet](
	[CartId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_CartDet] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ShpId] ASC,
	[ProId] ASC,
	[ColorId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Config]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[ConfigId] [int] NOT NULL,
	[ConfigName] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[Desc] [nvarchar](255) NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[ConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coupon](
	[CouponID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Discount] [int] NULL,
	[Type] [varchar](10) NULL,
	[FreeShip] [bit] NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[Indefinite] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Coupon_1] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CouponDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CouponDet](
	[CouponId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC,
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cus]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cus](
	[CusId] [int] NOT NULL,
 CONSTRAINT [PK_UsersCustomers] PRIMARY KEY CLUSTERED 
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mer]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mer](
	[MerId] [int] NOT NULL,
 CONSTRAINT [PK_Merchants] PRIMARY KEY CLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mstr]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mstr](
	[MstrId] [int] NOT NULL,
 CONSTRAINT [PK_Mstr] PRIMARY KEY CLUSTERED 
(
	[MstrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MstrDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstrDet](
	[MstrId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[AddDate] [datetime] NULL,
	[AddBy] [int] NULL,
 CONSTRAINT [PK_MstrDet] PRIMARY KEY CLUSTERED 
(
	[MstrId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MstrRole]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstrRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](255) NULL,
 CONSTRAINT [PK_MstrRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pro]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pro](
	[ShpId] [int] NOT NULL,
	[ProId] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ProQuantity] [int] NOT NULL,
	[IsOutOfStock] [bit] NOT NULL,
	[ProName] [nvarchar](255) NOT NULL,
	[Img] [varchar](255) NULL,
	[Desc] [text] NULL,
	[DescShort] [text] NULL,
	[Price] [varchar](255) NOT NULL,
	[PriceAfter] [varchar](255) NULL,
	[Active] [bit] NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_ProductQuantity] PRIMARY KEY CLUSTERED 
(
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProBrand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](255) NULL,
	[Img] [varchar](255) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProCat]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProCat](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](255) NULL,
	[Active] [bit] NOT NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NULL,
	[Img] [varchar](255) NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProColor]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProColor](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](255) NULL,
	[ColorImg] [nvarchar](255) NULL,
	[HexCode] [char](6) NULL,
 CONSTRAINT [PK_ProColor] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProDet](
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_ProDet] PRIMARY KEY CLUSTERED 
(
	[ShpId] ASC,
	[ProId] ASC,
	[ColorId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProSize]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProSize](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](255) NULL,
	[SizeImg] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProSize] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProSlide]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProSlide](
	[SlideId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Img] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProSlide] PRIMARY KEY CLUSTERED 
(
	[SlideId] ASC,
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProSlideImg]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProSlideImg](
	[SlideId] [int] IDENTITY(1,1) NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Img] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProSlideImg] PRIMARY KEY CLUSTERED 
(
	[SlideId] ASC,
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rcpt]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rcpt](
	[RcptId] [int] IDENTITY(1,1) NOT NULL,
	[UsrAdd] [int] NOT NULL,
	[UsrEdit] [int] NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NULL,
	[IsCompleted] [bit] NULL,
 CONSTRAINT [Pk_HoaDon_Id] PRIMARY KEY CLUSTERED 
(
	[RcptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuy]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuy](
	[RcptBuyId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[CusId] [int] NOT NULL,
 CONSTRAINT [PK_RcptBuy] PRIMARY KEY CLUSTERED 
(
	[RcptBuyId] ASC,
	[ShpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyDet](
	[RcptBuyId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Cmt] [nvarchar](255) NULL,
	[Point] [int] NULL,
	[Quantity] [int] NULL,
	[DateAdd] [datetime] NULL,
 CONSTRAINT [PK_ReceiptsBuysDetails] PRIMARY KEY CLUSTERED 
(
	[RcptBuyId] ASC,
	[ShpId] ASC,
	[ProId] ASC,
	[ColorId] ASC,
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuySta]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuySta](
	[StaId] [int] IDENTITY(1,1) NOT NULL,
	[RcptBuyId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsBuysStates] PRIMARY KEY CLUSTERED 
(
	[StaId] ASC,
	[RcptBuyId] ASC,
	[ShpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyStaDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyStaDet](
	[StaId] [int] NOT NULL,
	[RcptBuyId] [int] NOT NULL,
	[ShpId] [nchar](10) NOT NULL,
	[StepId] [int] NOT NULL,
	[IsDone] [bit] NOT NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesDetails] PRIMARY KEY CLUSTERED 
(
	[StaId] ASC,
	[RcptBuyId] ASC,
	[ShpId] ASC,
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyStaStep]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyStaStep](
	[StepId] [int] NOT NULL,
	[StepCont] [nvarchar](255) NULL,
	[StepOrder] [int] NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesSteps] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSub]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSub](
	[RcptSubId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsSubscriptions] PRIMARY KEY CLUSTERED 
(
	[RcptSubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSubDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSubDet](
	[RcptSubId] [int] NOT NULL,
	[SubId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_ReceiptsSubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[RcptSubId] ASC,
	[SubId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shp]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shp](
	[ShpId] [int] IDENTITY(1,1) NOT NULL,
	[MerId] [int] NOT NULL,
	[ShpName] [nvarchar](255) NOT NULL,
	[DateStart] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UsersMerchantsShops] PRIMARY KEY CLUSTERED 
(
	[ShpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sub]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub](
	[SubId] [int] IDENTITY(1,1) NOT NULL,
	[SubContent] [nvarchar](255) NULL,
	[DurDay] [int] NOT NULL,
	[Price] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubDet]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDet](
	[SubId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_SubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usr]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usr](
	[UsrId] [int] IDENTITY(1,1) NOT NULL,
	[UsrName] [nvarchar](255) NOT NULL,
	[Avatar] [nvarchar](255) NULL,
	[Login] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[Email] [varchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UsrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrAct]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsrAct](
	[ActId] [int] IDENTITY(1,1) NOT NULL,
	[UsrId] [int] NULL,
	[ActCode] [varchar](255) NULL,
	[IsAct] [bit] NULL,
 CONSTRAINT [PK_UsrAct] PRIMARY KEY CLUSTERED 
(
	[ActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WebInfo]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebInfo](
	[WebId] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[WorkTime] [nvarchar](255) NULL,
 CONSTRAINT [PK_WebInfo] PRIMARY KEY CLUSTERED 
(
	[WebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WebSlide]    Script Date: 21/04/2019 1:09:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebSlide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[WebId] [int] NULL,
	[Img] [nvarchar](255) NULL,
	[Order] [int] NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_WebSlide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [CusId], [IpAddress]) VALUES (1, 3, N'192.168.1.1')
INSERT [dbo].[Cart] ([CartId], [CusId], [IpAddress]) VALUES (2, 16, NULL)
SET IDENTITY_INSERT [dbo].[Cart] OFF
INSERT [dbo].[CartDet] ([CartId], [ShpId], [ProId], [ColorId], [SizeId], [Qty]) VALUES (1, 1, 1, 1, 1, 3)
INSERT [dbo].[CartDet] ([CartId], [ShpId], [ProId], [ColorId], [SizeId], [Qty]) VALUES (1, 1, 1, 1, 2, 3)
INSERT [dbo].[CartDet] ([CartId], [ShpId], [ProId], [ColorId], [SizeId], [Qty]) VALUES (2, 1, 1, 1, 1, 7)
INSERT [dbo].[Cus] ([CusId]) VALUES (2)
INSERT [dbo].[Cus] ([CusId]) VALUES (3)
INSERT [dbo].[Cus] ([CusId]) VALUES (11)
INSERT [dbo].[Cus] ([CusId]) VALUES (13)
INSERT [dbo].[Cus] ([CusId]) VALUES (15)
INSERT [dbo].[Cus] ([CusId]) VALUES (16)
INSERT [dbo].[Mer] ([MerId]) VALUES (3)
INSERT [dbo].[Mer] ([MerId]) VALUES (12)
INSERT [dbo].[Mstr] ([MstrId]) VALUES (1)
INSERT [dbo].[Mstr] ([MstrId]) VALUES (3)
INSERT [dbo].[Mstr] ([MstrId]) VALUES (4)
INSERT [dbo].[Mstr] ([MstrId]) VALUES (5)
INSERT [dbo].[Mstr] ([MstrId]) VALUES (11)
INSERT [dbo].[MstrDet] ([MstrId], [RoleId], [AddDate], [AddBy]) VALUES (1, 1, NULL, NULL)
INSERT [dbo].[MstrDet] ([MstrId], [RoleId], [AddDate], [AddBy]) VALUES (1, 3, NULL, NULL)
INSERT [dbo].[MstrDet] ([MstrId], [RoleId], [AddDate], [AddBy]) VALUES (4, 2, NULL, NULL)
INSERT [dbo].[MstrDet] ([MstrId], [RoleId], [AddDate], [AddBy]) VALUES (5, 3, NULL, NULL)
INSERT [dbo].[MstrDet] ([MstrId], [RoleId], [AddDate], [AddBy]) VALUES (11, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MstrRole] ON 

INSERT [dbo].[MstrRole] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[MstrRole] ([RoleId], [RoleName]) VALUES (2, N'Thủ quỹ')
INSERT [dbo].[MstrRole] ([RoleId], [RoleName]) VALUES (3, N'Bảo mật viên')
SET IDENTITY_INSERT [dbo].[MstrRole] OFF
SET IDENTITY_INSERT [dbo].[Pro] ON 

INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (1, 1, 1, 1, 2, 1, N'UltraBoost 19', N'1.jpg', NULL, NULL, N'20', N'0', 1, NULL, NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (1, 7, 2, 2, 1, 1, N'Nike ACG Wildwood', N'2.jpg', NULL, NULL, N'3500000', N'0', 1, NULL, NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (1, 8, 3, 3, 1, 1, N'WOMEN''S WARD LOW TOP SNEAKER', N'3.jpg', NULL, NULL, N'2000000', N'0', 1, CAST(0x0000AA1800D53488 AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (1, 16, 2, 2, 1, 1, N'Bitis Hunter X', NULL, NULL, NULL, N'40000', N'0', NULL, CAST(0x0000AA30015EEAE2 AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (2, 9, 1, 1, 3, 1, N'UltraBoost 20', N'1.jpg', NULL, NULL, N'3900000', N'0', 1, CAST(0x0000AA2F00A95354 AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (2, 12, 2, 2, 1, 1, N'Nike ACG Wild', NULL, NULL, NULL, N'4000000', N'0', 1, CAST(0x0000AA2F00A9F02B AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (2, 19, 2, 2, 1, 1, N'Nike ACG Wild 1', NULL, NULL, NULL, N'4000000', N'0', 1, CAST(0x0000AA2F00A9F02B AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (2, 20, 2, 2, 1, 1, N'Nike ACG Wild 2', NULL, NULL, NULL, N'4000000', N'0', 1, CAST(0x0000AA2F00A9F02B AS DateTime), NULL)
INSERT [dbo].[Pro] ([ShpId], [ProId], [CatId], [BrandId], [ProQuantity], [IsOutOfStock], [ProName], [Img], [Desc], [DescShort], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (2, 23, 1, 1, 1, 1, N'1', NULL, NULL, NULL, N'0', N'0', NULL, CAST(0x0000AA350188C8D0 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Pro] OFF
SET IDENTITY_INSERT [dbo].[ProBrand] ON 

INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (1, N'Adidas', N'adidas.png')
INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (2, N'Nike', N'nike.png')
INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (3, N'Vans', N'vans.png')
INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (4, N'Reebok', N'reebok.png')
INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (16, N'Asics', N'asics.png')
INSERT [dbo].[ProBrand] ([BrandId], [BrandName], [Img]) VALUES (17, N'New Balance', N'newbalance.png')
SET IDENTITY_INSERT [dbo].[ProBrand] OFF
SET IDENTITY_INSERT [dbo].[ProCat] ON 

INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit], [Img]) VALUES (1, N'Male Sneakers', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL, N'1.png')
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit], [Img]) VALUES (2, N'Female Sneakers', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL, N'2.jpg')
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit], [Img]) VALUES (3, N'Casual', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL, N'3.jpg')
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit], [Img]) VALUES (4, N'Sport', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL, N'4.jpg')
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit], [Img]) VALUES (5, N'Trending', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL, N'5.jpg')
SET IDENTITY_INSERT [dbo].[ProCat] OFF
SET IDENTITY_INSERT [dbo].[ProColor] ON 

INSERT [dbo].[ProColor] ([ColorId], [ColorName], [ColorImg], [HexCode]) VALUES (1, N'Đen', N'1.jpg', NULL)
INSERT [dbo].[ProColor] ([ColorId], [ColorName], [ColorImg], [HexCode]) VALUES (2, N'Trắng', N'2.jpg', NULL)
INSERT [dbo].[ProColor] ([ColorId], [ColorName], [ColorImg], [HexCode]) VALUES (3, N'Đỏ', N'3.jpg', NULL)
INSERT [dbo].[ProColor] ([ColorId], [ColorName], [ColorImg], [HexCode]) VALUES (4, N'Xanh', N'4.jpg', NULL)
SET IDENTITY_INSERT [dbo].[ProColor] OFF
INSERT [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId]) VALUES (1, 1, 1, 2)
INSERT [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId]) VALUES (1, 7, 2, 2)
INSERT [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId]) VALUES (2, 9, 1, 1)
INSERT [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId]) VALUES (2, 23, 1, 1)
SET IDENTITY_INSERT [dbo].[ProSize] ON 

INSERT [dbo].[ProSize] ([SizeId], [SizeName], [SizeImg]) VALUES (1, N'38', N'1.jpg')
INSERT [dbo].[ProSize] ([SizeId], [SizeName], [SizeImg]) VALUES (2, N'39', N'1.jpg')
INSERT [dbo].[ProSize] ([SizeId], [SizeName], [SizeImg]) VALUES (3, N'40', N'1.jpg')
SET IDENTITY_INSERT [dbo].[ProSize] OFF
INSERT [dbo].[ProSlide] ([SlideId], [ShpId], [ProId], [Img]) VALUES (1, 1, 1, N'1.jpg')
INSERT [dbo].[ProSlide] ([SlideId], [ShpId], [ProId], [Img]) VALUES (2, 1, 1, N'2.jpg')
INSERT [dbo].[ProSlide] ([SlideId], [ShpId], [ProId], [Img]) VALUES (3, 1, 1, N'3.jpg')
SET IDENTITY_INSERT [dbo].[Rcpt] ON 

INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (2, 1, NULL, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA16011D7042 AS DateTime), NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (3, 1, NULL, CAST(0x0000AA160189D8EB AS DateTime), CAST(0x0000AA16011D7042 AS DateTime), NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (4, 1, NULL, CAST(0x0000AA160189EF4B AS DateTime), CAST(0x0000AA16011D7042 AS DateTime), NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (5, 1, NULL, CAST(0x0000AA260110397D AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (6, 1, NULL, CAST(0x0000AA2C00E5526B AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (7, 1, NULL, CAST(0x0000AA2E018B4848 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (8, 1, NULL, CAST(0x0000AA2F000013F4 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (9, 1, NULL, CAST(0x0000AA2F0007330A AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (10, 1, NULL, CAST(0x0000AA2F000A9328 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (11, 1, NULL, CAST(0x0000AA2F0088219B AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (12, 1, NULL, CAST(0x0000AA2F0089A5C0 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (13, 1, NULL, CAST(0x0000AA2F008B5584 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (14, 1, NULL, CAST(0x0000AA2F008E3CA5 AS DateTime), NULL, NULL)
INSERT [dbo].[Rcpt] ([RcptId], [UsrAdd], [UsrEdit], [DateAdd], [DateEdit], [IsCompleted]) VALUES (16, 1, 1, CAST(0x0000AA2F00909859 AS DateTime), CAST(0x0000AA2F0091036A AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Rcpt] OFF
INSERT [dbo].[RcptBuy] ([RcptBuyId], [ShpId], [CusId]) VALUES (2, 1, 2)
INSERT [dbo].[RcptBuy] ([RcptBuyId], [ShpId], [CusId]) VALUES (16, 2, 11)
INSERT [dbo].[RcptBuyDet] ([RcptBuyId], [ShpId], [ProId], [ColorId], [SizeId], [Cmt], [Point], [Quantity], [DateAdd]) VALUES (2, 1, 1, 1, 1, NULL, 4, 3, NULL)
INSERT [dbo].[RcptBuyDet] ([RcptBuyId], [ShpId], [ProId], [ColorId], [SizeId], [Cmt], [Point], [Quantity], [DateAdd]) VALUES (16, 2, 23, 1, 1, N'Tuyet', 5, 3, NULL)
SET IDENTITY_INSERT [dbo].[RcptBuySta] ON 

INSERT [dbo].[RcptBuySta] ([StaId], [RcptBuyId], [ShpId]) VALUES (1, 2, 1)
SET IDENTITY_INSERT [dbo].[RcptBuySta] OFF
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 1, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 2, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 3, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 4, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 5, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 6, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [RcptBuyId], [ShpId], [StepId], [IsDone]) VALUES (1, 1, N'1         ', 7, 1)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (1, N'Đang  xác nhận', 1)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (2, N'Đã xác nhận', 2)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (3, N'Chờ đi nhận', 3)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (4, N'Đang đi nhận', 4)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (5, N'Đã nhận hàng', 5)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (6, N'Đang chuyển', 6)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (7, N'Thành công', 7)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (8, N'Thất bại', 8)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (9, N'Khách hủy', 9)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (10, N'Hệ thống hủy', 10)
INSERT [dbo].[RcptBuyStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (11, N'Hết hàng', 11)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (5)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (6)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (7)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (8)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (9)
INSERT [dbo].[RcptSubDet] ([RcptSubId], [SubId], [MerId], [Quantity]) VALUES (5, 1, 3, 2)
INSERT [dbo].[RcptSubDet] ([RcptSubId], [SubId], [MerId], [Quantity]) VALUES (5, 2, 3, 1)
INSERT [dbo].[RcptSubDet] ([RcptSubId], [SubId], [MerId], [Quantity]) VALUES (5, 3, 3, 1)
INSERT [dbo].[RcptSubDet] ([RcptSubId], [SubId], [MerId], [Quantity]) VALUES (6, 1, 12, 5)
SET IDENTITY_INSERT [dbo].[Shp] ON 

INSERT [dbo].[Shp] ([ShpId], [MerId], [ShpName], [DateStart], [Active]) VALUES (1, 3, N'KICKZ', CAST(0x0000AA16010C05B1 AS DateTime), 1)
INSERT [dbo].[Shp] ([ShpId], [MerId], [ShpName], [DateStart], [Active]) VALUES (2, 12, N'RIZZ', CAST(0x0000AA2F00A91DCD AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Shp] OFF
SET IDENTITY_INSERT [dbo].[Sub] ON 

INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (1, N'Tuần', 7, N'300000')
INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (2, N'Tháng', 30, N'1000000')
INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (3, N'Năm', 300, N'30000000')
SET IDENTITY_INSERT [dbo].[Sub] OFF
INSERT [dbo].[SubDet] ([SubId], [MerId], [DateStart], [DateEnd]) VALUES (1, 3, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA1D011D7042 AS DateTime))
INSERT [dbo].[SubDet] ([SubId], [MerId], [DateStart], [DateEnd]) VALUES (1, 12, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA16011D7042 AS DateTime))
INSERT [dbo].[SubDet] ([SubId], [MerId], [DateStart], [DateEnd]) VALUES (2, 3, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA1F011D7042 AS DateTime))
INSERT [dbo].[SubDet] ([SubId], [MerId], [DateStart], [DateEnd]) VALUES (3, 3, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA16011D7042 AS DateTime))
SET IDENTITY_INSERT [dbo].[Usr] ON 

INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (1, N'Nguyễn Doãn Hiện', NULL, N'doanhien', N'admin', 1, N'doanhien@gmail.com', N'273 An Dương Vương P7 Q6', N'0704569020', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (2, N'Phan Anh Trúc', N'1.jpg', N'anhtruc', N'123', 1, N'anhtruc@gmail.com', N'21 Lưu Xuân Tín P15 Q5', N'0967513425', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (3, N'Lê Hiển', NULL, N'2', N'XY4HG0lafuA=', 1, N'toanhien@gmail.com', N'26 Nguyễn Trãi P1 Q5', N'0967513424', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (4, N'Mèo bi sọc', NULL, N'meobisoc', N'admin', 0, NULL, N'Dưới tủ', NULL, CAST(0x0000AA1800D256EC AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (5, N'Cá Bảy Màu Xào', NULL, N'cabaymau', N'admin', 1, NULL, N'Hồ cá', NULL, CAST(0x0000AA1800D2E306 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (11, N'1', NULL, N'1', N'f2TbDFld1mw=', 0, NULL, NULL, NULL, CAST(0x0000AA1C0120A840 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (12, N'DoanHien', NULL, N'doanhiene', N'UQS6/nD7DKd/DCueVTJWtw==', 0, NULL, NULL, NULL, CAST(0x0000AA260139F251 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (13, N'Anh Truc', NULL, N'anhtruckute', N'8fiyLiLvwu2O8kiA/5VgoQ==', 0, NULL, NULL, NULL, CAST(0x0000AA26013B39C1 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (14, N'11', NULL, N'11', N'2hE0JwNwzZA=', 0, NULL, NULL, NULL, CAST(0x0000AA33013BFEE4 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (15, N'Ty', NULL, N'ty', N'2hE0JwNwzZA=', 0, NULL, NULL, NULL, CAST(0x0000AA33013C95B9 AS DateTime), NULL)
INSERT [dbo].[Usr] ([UsrId], [UsrName], [Avatar], [Login], [Password], [Active], [Email], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (16, N'Hien', NULL, N'eq', N'2hE0JwNwzZA=', 0, NULL, NULL, NULL, CAST(0x0000AA33013F3A53 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Usr] OFF
SET IDENTITY_INSERT [dbo].[UsrAct] ON 

INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (2, 11, N'2hE0JwNwzZA=', NULL)
INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (3, 12, N'ExeJZTY+/h49fyNarU6KBw==', NULL)
INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (4, 13, N'TYyYirnrNSKlcxT/XNzMig==', NULL)
INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (5, 14, N'ZeL8V/Ri8RM=', NULL)
INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (6, 15, N'Bv+zg0sVtvA=', NULL)
INSERT [dbo].[UsrAct] ([ActId], [UsrId], [ActCode], [IsAct]) VALUES (7, 16, N'LcsTjpX1E+g=', NULL)
SET IDENTITY_INSERT [dbo].[UsrAct] OFF
INSERT [dbo].[WebInfo] ([WebId], [Name], [Address], [Email], [Phone], [WorkTime]) VALUES (1, N'The Shoes', N'273 An Dương Vương', NULL, NULL, N'Hai-Sáu 10:00pm - 7:00pm')
SET IDENTITY_INSERT [dbo].[WebSlide] ON 

INSERT [dbo].[WebSlide] ([id], [WebId], [Img], [Order], [DateAdd], [DateEdit]) VALUES (1, 1, N'1.jpg', NULL, NULL, NULL)
INSERT [dbo].[WebSlide] ([id], [WebId], [Img], [Order], [DateAdd], [DateEdit]) VALUES (2, 1, N'2.jpeg', NULL, NULL, NULL)
INSERT [dbo].[WebSlide] ([id], [WebId], [Img], [Order], [DateAdd], [DateEdit]) VALUES (3, 1, N'3.jpeg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WebSlide] OFF
/****** Object:  Index [IX_UsersCustomersCarts]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [IX_UsersCustomersCarts] UNIQUE NONCLUSTERED 
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RcptStaStep]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[RcptBuyStaStep] ADD  CONSTRAINT [IX_RcptStaStep] UNIQUE NONCLUSTERED 
(
	[StepOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersMerchantsShops]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[Shp] ADD  CONSTRAINT [IX_UsersMerchantsShops] UNIQUE NONCLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Usr_Login]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[Usr] ADD  CONSTRAINT [IX_Usr_Login] UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsrAct]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[UsrAct] ADD  CONSTRAINT [IX_UsrAct] UNIQUE NONCLUSTERED 
(
	[ActCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsrAct_1]    Script Date: 21/04/2019 1:09:57 PM ******/
ALTER TABLE [dbo].[UsrAct] ADD  CONSTRAINT [IX_UsrAct_1] UNIQUE NONCLUSTERED 
(
	[UsrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartDet] ADD  CONSTRAINT [DF_CartDet_Qty]  DEFAULT ((1)) FOR [Qty]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_CatId]  DEFAULT ((1)) FOR [CatId]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_ProQuantity]  DEFAULT ((1)) FOR [ProQuantity]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_IsOutOfStock]  DEFAULT ((1)) FOR [IsOutOfStock]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_PriceAfter]  DEFAULT ((0)) FOR [PriceAfter]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Pro_DateAdd]  DEFAULT (getdate()) FOR [DateAdd]
GO
ALTER TABLE [dbo].[ProCat] ADD  CONSTRAINT [DF_ProCat_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ProCat] ADD  CONSTRAINT [DF_ProCat_DateAdd]  DEFAULT (getdate()) FOR [DateAdd]
GO
ALTER TABLE [dbo].[Rcpt] ADD  CONSTRAINT [DF_Rcpt_DateAdd]  DEFAULT (getdate()) FOR [DateAdd]
GO
ALTER TABLE [dbo].[RcptBuyStaDet] ADD  CONSTRAINT [DF_RcptBuyStaDet_IsDone]  DEFAULT ((0)) FOR [IsDone]
GO
ALTER TABLE [dbo].[Shp] ADD  CONSTRAINT [DF_Shp_DateStart]  DEFAULT (getdate()) FOR [DateStart]
GO
ALTER TABLE [dbo].[Shp] ADD  CONSTRAINT [DF_Shp_Active]  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[Sub] ADD  CONSTRAINT [DF_Sub_DurDay]  DEFAULT ((1)) FOR [DurDay]
GO
ALTER TABLE [dbo].[Usr] ADD  CONSTRAINT [DF_Usr_Active]  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[Usr] ADD  CONSTRAINT [DF_Usr_DateAdd]  DEFAULT (getdate()) FOR [DateAdd]
GO
ALTER TABLE [dbo].[UsrAct] ADD  CONSTRAINT [DF_UsrAct_IsAct]  DEFAULT ((0)) FOR [IsAct]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers] FOREIGN KEY([CusId])
REFERENCES [dbo].[Cus] ([CusId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers]
GO
ALTER TABLE [dbo].[CartDet]  WITH CHECK ADD  CONSTRAINT [FK_CartDet_ProDet] FOREIGN KEY([ShpId], [ProId], [ColorId], [SizeId])
REFERENCES [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId])
GO
ALTER TABLE [dbo].[CartDet] CHECK CONSTRAINT [FK_CartDet_ProDet]
GO
ALTER TABLE [dbo].[CartDet]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([CartId])
GO
ALTER TABLE [dbo].[CartDet] CHECK CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts]
GO
ALTER TABLE [dbo].[CouponDet]  WITH CHECK ADD  CONSTRAINT [FK_CouponDet_Coupon] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[CouponDet] CHECK CONSTRAINT [FK_CouponDet_Coupon]
GO
ALTER TABLE [dbo].[CouponDet]  WITH CHECK ADD  CONSTRAINT [FK_CouponDet_Pro] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[Pro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[CouponDet] CHECK CONSTRAINT [FK_CouponDet_Pro]
GO
ALTER TABLE [dbo].[Cus]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomers_Users] FOREIGN KEY([CusId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[Cus] CHECK CONSTRAINT [FK_UsersCustomers_Users]
GO
ALTER TABLE [dbo].[Mer]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchants_Users] FOREIGN KEY([MerId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[Mer] CHECK CONSTRAINT [FK_UsersMerchants_Users]
GO
ALTER TABLE [dbo].[Mstr]  WITH CHECK ADD  CONSTRAINT [FK_Mstr_Usr] FOREIGN KEY([MstrId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[Mstr] CHECK CONSTRAINT [FK_Mstr_Usr]
GO
ALTER TABLE [dbo].[MstrDet]  WITH CHECK ADD  CONSTRAINT [FK_MstrDet_Mstr] FOREIGN KEY([MstrId])
REFERENCES [dbo].[Mstr] ([MstrId])
GO
ALTER TABLE [dbo].[MstrDet] CHECK CONSTRAINT [FK_MstrDet_Mstr]
GO
ALTER TABLE [dbo].[MstrDet]  WITH CHECK ADD  CONSTRAINT [FK_MstrDet_Mstr1] FOREIGN KEY([AddBy])
REFERENCES [dbo].[Mstr] ([MstrId])
GO
ALTER TABLE [dbo].[MstrDet] CHECK CONSTRAINT [FK_MstrDet_Mstr1]
GO
ALTER TABLE [dbo].[MstrDet]  WITH CHECK ADD  CONSTRAINT [FK_MstrDet_MstrRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[MstrRole] ([RoleId])
GO
ALTER TABLE [dbo].[MstrDet] CHECK CONSTRAINT [FK_MstrDet_MstrRole]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Pro_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[ProBrand] ([BrandId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Pro_Brand]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Pro_ProCat] FOREIGN KEY([CatId])
REFERENCES [dbo].[ProCat] ([CatId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Pro_ProCat]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops] FOREIGN KEY([ShpId])
REFERENCES [dbo].[Shp] ([ShpId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops]
GO
ALTER TABLE [dbo].[ProDet]  WITH CHECK ADD  CONSTRAINT [FK_ProDet_Pro] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[Pro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[ProDet] CHECK CONSTRAINT [FK_ProDet_Pro]
GO
ALTER TABLE [dbo].[ProDet]  WITH CHECK ADD  CONSTRAINT [FK_ProDet_ProColor] FOREIGN KEY([ColorId])
REFERENCES [dbo].[ProColor] ([ColorId])
GO
ALTER TABLE [dbo].[ProDet] CHECK CONSTRAINT [FK_ProDet_ProColor]
GO
ALTER TABLE [dbo].[ProDet]  WITH CHECK ADD  CONSTRAINT [FK_ProDet_ProSize] FOREIGN KEY([SizeId])
REFERENCES [dbo].[ProSize] ([SizeId])
GO
ALTER TABLE [dbo].[ProDet] CHECK CONSTRAINT [FK_ProDet_ProSize]
GO
ALTER TABLE [dbo].[ProSlide]  WITH CHECK ADD  CONSTRAINT [FK_ProSlide_Pro] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[Pro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[ProSlide] CHECK CONSTRAINT [FK_ProSlide_Pro]
GO
ALTER TABLE [dbo].[ProSlideImg]  WITH CHECK ADD  CONSTRAINT [FK_ProSlideImg_Pro] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[Pro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[ProSlideImg] CHECK CONSTRAINT [FK_ProSlideImg_Pro]
GO
ALTER TABLE [dbo].[Rcpt]  WITH CHECK ADD  CONSTRAINT [FK_Rcpt_Usr] FOREIGN KEY([UsrAdd])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[Rcpt] CHECK CONSTRAINT [FK_Rcpt_Usr]
GO
ALTER TABLE [dbo].[Rcpt]  WITH CHECK ADD  CONSTRAINT [FK_Rcpt_Usr1] FOREIGN KEY([UsrEdit])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[Rcpt] CHECK CONSTRAINT [FK_Rcpt_Usr1]
GO
ALTER TABLE [dbo].[RcptBuy]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuy_Cus] FOREIGN KEY([CusId])
REFERENCES [dbo].[Cus] ([CusId])
GO
ALTER TABLE [dbo].[RcptBuy] CHECK CONSTRAINT [FK_RcptBuy_Cus]
GO
ALTER TABLE [dbo].[RcptBuy]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuy_Rcpt] FOREIGN KEY([RcptBuyId])
REFERENCES [dbo].[Rcpt] ([RcptId])
GO
ALTER TABLE [dbo].[RcptBuy] CHECK CONSTRAINT [FK_RcptBuy_Rcpt]
GO
ALTER TABLE [dbo].[RcptBuy]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuy_Shp] FOREIGN KEY([ShpId])
REFERENCES [dbo].[Shp] ([ShpId])
GO
ALTER TABLE [dbo].[RcptBuy] CHECK CONSTRAINT [FK_RcptBuy_Shp]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuyDet_ProDet] FOREIGN KEY([ShpId], [ProId], [ColorId], [SizeId])
REFERENCES [dbo].[ProDet] ([ShpId], [ProId], [ColorId], [SizeId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_RcptBuyDet_ProDet]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuyDet_RcptBuy] FOREIGN KEY([RcptBuyId], [ShpId])
REFERENCES [dbo].[RcptBuy] ([RcptBuyId], [ShpId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_RcptBuyDet_RcptBuy]
GO
ALTER TABLE [dbo].[RcptBuySta]  WITH CHECK ADD  CONSTRAINT [FK_RcptBuySta_RcptBuy] FOREIGN KEY([RcptBuyId], [ShpId])
REFERENCES [dbo].[RcptBuy] ([RcptBuyId], [ShpId])
GO
ALTER TABLE [dbo].[RcptBuySta] CHECK CONSTRAINT [FK_RcptBuySta_RcptBuy]
GO
ALTER TABLE [dbo].[RcptBuyStaDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps] FOREIGN KEY([StepId])
REFERENCES [dbo].[RcptBuyStaStep] ([StepId])
GO
ALTER TABLE [dbo].[RcptBuyStaDet] CHECK CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps]
GO
ALTER TABLE [dbo].[RcptSub]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptions_Receipts] FOREIGN KEY([RcptSubId])
REFERENCES [dbo].[Rcpt] ([RcptId])
GO
ALTER TABLE [dbo].[RcptSub] CHECK CONSTRAINT [FK_ReceiptsSubscriptions_Receipts]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions] FOREIGN KEY([RcptSubId])
REFERENCES [dbo].[RcptSub] ([RcptSubId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails] FOREIGN KEY([SubId], [MerId])
REFERENCES [dbo].[SubDet] ([SubId], [MerId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails]
GO
ALTER TABLE [dbo].[Shp]  WITH CHECK ADD  CONSTRAINT [FK_Shp_Mer] FOREIGN KEY([MerId])
REFERENCES [dbo].[Mer] ([MerId])
GO
ALTER TABLE [dbo].[Shp] CHECK CONSTRAINT [FK_Shp_Mer]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_Subscriptions] FOREIGN KEY([SubId])
REFERENCES [dbo].[Sub] ([SubId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_Subscriptions]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants] FOREIGN KEY([MerId])
REFERENCES [dbo].[Mer] ([MerId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants]
GO
ALTER TABLE [dbo].[UsrAct]  WITH CHECK ADD  CONSTRAINT [FK_UsrAct_Usr] FOREIGN KEY([UsrId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[UsrAct] CHECK CONSTRAINT [FK_UsrAct_Usr]
GO
ALTER TABLE [dbo].[WebSlide]  WITH CHECK ADD  CONSTRAINT [FK_WebSlide_WebInfo] FOREIGN KEY([WebId])
REFERENCES [dbo].[WebInfo] ([WebId])
GO
ALTER TABLE [dbo].[WebSlide] CHECK CONSTRAINT [FK_WebSlide_WebInfo]
GO
ALTER TABLE [dbo].[Usr]  WITH CHECK ADD  CONSTRAINT [CK_Usr] CHECK  (([Email] like '%_@__%.__%'))
GO
ALTER TABLE [dbo].[Usr] CHECK CONSTRAINT [CK_Usr]
GO
ALTER TABLE [dbo].[Usr]  WITH CHECK ADD  CONSTRAINT [CK_Usr_1] CHECK  ((NOT [Phone] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Usr] CHECK CONSTRAINT [CK_Usr_1]
GO
ALTER TABLE [dbo].[WebInfo]  WITH CHECK ADD  CONSTRAINT [CK_WebInfo] CHECK  (([WebId]=(1)))
GO
ALTER TABLE [dbo].[WebInfo] CHECK CONSTRAINT [CK_WebInfo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Rcpt', @level2type=N'COLUMN',@level2name=N'RcptId'
GO
