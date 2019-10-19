USE [ashu]
GO

/****** Object:  StoredProcedure [dbo].[add_patient]    Script Date: 19-10-2019 14:37:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[add_patient]
(@patient_Name varchar(50),
@gender varchar(10),
@marital_status varchar(10),
@age int,
@phone_no bigint,
@address varchar(max),
@patient_Id_out int out)
as
begin
insert into patient 
(patient_Name ,
gender ,
marital_status ,
age ,
phone_no ,
address)
values
(@patient_Name ,
@gender ,
@marital_status ,
@age ,
@phone_no ,
@address)
set @patient_Id_out=@@IDENTITY
end
GO


