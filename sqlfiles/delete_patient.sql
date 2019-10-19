USE [ashu]
GO

/****** Object:  StoredProcedure [dbo].[delete_patient]    Script Date: 19-10-2019 14:38:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[delete_patient] 
(@patient_Id int)
as
begin 
delete from patient
where 
patient_Id=@patient_Id
end 
