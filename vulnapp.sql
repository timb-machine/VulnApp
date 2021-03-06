/*
$Header$

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.
* Neither the name of the Nth Dimension nor the names of its contributors may
be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

(c) Tim Brown, 2009
<mailto:timb@nth-dimension.org.uk>
<http://www.nth-dimension.org.uk/> / <http://www.machine.org.uk/>
*/

/****** Object:  Table [dbo].[users]    Script Date: 02/12/2011 00:53:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Role [vulnapp]    Script Date: 02/12/2011 00:53:38 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vulnapp')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vulnapp' AND type = 'R')
CREATE ROLE [vulnapp]

END
GO
/****** Object:  Table [dbo].[users]    Script Date: 02/12/2011 00:53:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[id] [smallint] NOT NULL,
	[username] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[password] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] [smallint] NULL,
	[score] [bigint] NULL,
	[image] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (0, N'admin     ', N'admin!"£  ', N'AdminTest', 0, 100, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (1, N'user1     ', N'user1     ', N'User 1', 1, -100, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (2, N'user2     ', N'user2     ', N'User2', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (3, N'user3     ', N'user3     ', N'User3', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (4, N'user4     ', N'user4     ', N'User4', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (5, N'user5     ', N'user5     ', N'User5', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (6, N'user6     ', N'user6     ', N'User6', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (7, N'user7     ', N'user7     ', N'User7', 1, 0, N'nopic.png')
INSERT [dbo].[users] ([id], [username], [password], [name], [type], [score], [image]) VALUES (8, N'user8     ', N'user8     ', N'User8', 1, 0, N'nopic.png')
