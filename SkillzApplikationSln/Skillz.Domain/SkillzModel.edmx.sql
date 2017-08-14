
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/14/2017 13:22:17
-- Generated from EDMX file: C:\Users\karlssonjy\Source\Repos\skillz\SkillzApplikationSln\Skillz.Domain\SkillzModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [skillzDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillDOSet] DROP CONSTRAINT [FK_UserSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_SkillSport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillDOSet] DROP CONSTRAINT [FK_SkillSport];
GO
IF OBJECT_ID(N'[dbo].[FK_SkillSkillTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillTimeDOSet] DROP CONSTRAINT [FK_SkillSkillTime];
GO
IF OBJECT_ID(N'[dbo].[FK_SportExsercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExserciseDOSet] DROP CONSTRAINT [FK_SportExsercise];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserDOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserDOSet];
GO
IF OBJECT_ID(N'[dbo].[SkillDOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillDOSet];
GO
IF OBJECT_ID(N'[dbo].[SportDOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SportDOSet];
GO
IF OBJECT_ID(N'[dbo].[SkillTimeDOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillTimeDOSet];
GO
IF OBJECT_ID(N'[dbo].[ExserciseDOSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExserciseDOSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserDOSet'
CREATE TABLE [dbo].[UserDOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SkillDOSet'
CREATE TABLE [dbo].[SkillDOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [User_Id] int  NOT NULL,
    [Sport_Id] int  NOT NULL
);
GO

-- Creating table 'SportDOSet'
CREATE TABLE [dbo].[SportDOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SkillTimeDOSet'
CREATE TABLE [dbo].[SkillTimeDOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SkillDOId] int  NOT NULL,
    [Time] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ExserciseDOSet'
CREATE TABLE [dbo].[ExserciseDOSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ExerciseDescription] nvarchar(max)  NOT NULL,
    [SportDOId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserDOSet'
ALTER TABLE [dbo].[UserDOSet]
ADD CONSTRAINT [PK_UserDOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SkillDOSet'
ALTER TABLE [dbo].[SkillDOSet]
ADD CONSTRAINT [PK_SkillDOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SportDOSet'
ALTER TABLE [dbo].[SportDOSet]
ADD CONSTRAINT [PK_SportDOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SkillTimeDOSet'
ALTER TABLE [dbo].[SkillTimeDOSet]
ADD CONSTRAINT [PK_SkillTimeDOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExserciseDOSet'
ALTER TABLE [dbo].[ExserciseDOSet]
ADD CONSTRAINT [PK_ExserciseDOSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_Id] in table 'SkillDOSet'
ALTER TABLE [dbo].[SkillDOSet]
ADD CONSTRAINT [FK_UserSkill]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserDOSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserSkill'
CREATE INDEX [IX_FK_UserSkill]
ON [dbo].[SkillDOSet]
    ([User_Id]);
GO

-- Creating foreign key on [Sport_Id] in table 'SkillDOSet'
ALTER TABLE [dbo].[SkillDOSet]
ADD CONSTRAINT [FK_SkillSport]
    FOREIGN KEY ([Sport_Id])
    REFERENCES [dbo].[SportDOSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillSport'
CREATE INDEX [IX_FK_SkillSport]
ON [dbo].[SkillDOSet]
    ([Sport_Id]);
GO

-- Creating foreign key on [SkillDOId] in table 'SkillTimeDOSet'
ALTER TABLE [dbo].[SkillTimeDOSet]
ADD CONSTRAINT [FK_SkillSkillTime]
    FOREIGN KEY ([SkillDOId])
    REFERENCES [dbo].[SkillDOSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillSkillTime'
CREATE INDEX [IX_FK_SkillSkillTime]
ON [dbo].[SkillTimeDOSet]
    ([SkillDOId]);
GO

-- Creating foreign key on [SportDOId] in table 'ExserciseDOSet'
ALTER TABLE [dbo].[ExserciseDOSet]
ADD CONSTRAINT [FK_SportExsercise]
    FOREIGN KEY ([SportDOId])
    REFERENCES [dbo].[SportDOSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SportExsercise'
CREATE INDEX [IX_FK_SportExsercise]
ON [dbo].[ExserciseDOSet]
    ([SportDOId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------