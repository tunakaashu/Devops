USE [ashu]
GO

/****** Object:  StoredProcedure [dbo].[loguser]    Script Date: 19-10-2019 14:43:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[loguser]
(
@username varchar(50),
@password varchar(50))
as 
begin
select * from userlogin
where username=@username
and password=@password
end
GO


