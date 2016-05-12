----------------------------------------------------------------------------
-- Lua code generated with wxFormBuilder (version Jun 17 2015)
-- http://www.wxformbuilder.org/
----------------------------------------------------------------------------

-- Load the wxLua module, does nothing if running from wxLua, wxLuaFreeze, or wxLuaEdit
package.cpath = package.cpath..";./?.dll;./?.so;../lib/?.so;../lib/vc_dll/?.dll;../lib/bcc_dll/?.dll;../lib/mingw_dll/?.dll;"
require("wx")

UI = {}


-- create MyFrame4
UI.MyFrame4 = wx.wxFrame (wx.NULL, wx.wxID_ANY, "Starter Lua 0.1 alpha by Graff46", wx.wxDefaultPosition, wx.wxSize( 500,143 ), wx.wxDEFAULT_FRAME_STYLE+wx.wxTAB_TRAVERSAL )
	UI.MyFrame4:SetSizeHints( wx.wxDefaultSize, wx.wxDefaultSize )
	
	UI.sbSizer1 = wx.wxStaticBoxSizer( wx.wxStaticBox( UI.MyFrame4, wx.wxID_ANY, "Data" ), wx.wxVERTICAL )
	
	UI.fgSizer1 = wx.wxFlexGridSizer( 0, 2, 0, 0 )
	UI.fgSizer1:SetFlexibleDirection( wx.wxBOTH )
	UI.fgSizer1:SetNonFlexibleGrowMode( wx.wxFLEX_GROWMODE_SPECIFIED )
	
	UI.m_staticText7 = wx.wxStaticText( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "Команда на выполнение", wx.wxDefaultPosition, wx.wxDefaultSize, 0 )
	UI.m_staticText7:Wrap( -1 )
	UI.m_staticText7:SetFont( wx.wxFont( 12, 74, 90, 90, False, "Arial" ) )
	UI.m_staticText7:SetForegroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_INFOBK ) )
	UI.m_staticText7:SetBackgroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_INACTIVECAPTION ) )
	
	UI.fgSizer1:Add( UI.m_staticText7, 0, wx.wxALL, 5 )
	
	UI.m_textCtrl19 = wx.wxTextCtrl( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "lua.exe my.lua", wx.wxPoint( 100,200 ), wx.wxSize( 250,-1 ), 0 )
	UI.fgSizer1:Add( UI.m_textCtrl19, 0, wx.wxALL, 5 )
	
	UI.m_staticText8 = wx.wxStaticText( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "Имя Вашей будущей программы", wx.wxDefaultPosition, wx.wxDefaultSize, 0 )
	UI.m_staticText8:Wrap( -1 )
	UI.m_staticText8:SetForegroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_INFOBK ) )
	UI.m_staticText8:SetBackgroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_INACTIVECAPTION ) )
	
	UI.fgSizer1:Add( UI.m_staticText8, 0, wx.wxALL, 5 )
	
	UI.name = wx.wxTextCtrl( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "MyProg", wx.wxDefaultPosition, wx.wxDefaultSize, 0 )
	UI.fgSizer1:Add( UI.name, 0, wx.wxALL + wx.wxEXPAND, 5 )
	
	UI.button_info = wx.wxButton( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "Info", wx.wxDefaultPosition, wx.wxDefaultSize, 0 )
	UI.button_info:SetForegroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_BTNHIGHLIGHT ) )
	UI.button_info:SetBackgroundColour( wx.wxSystemSettings.GetColour( wx.wxSYS_COLOUR_BACKGROUND ) )
	
	UI.fgSizer1:Add( UI.button_info, 0, wx.wxALL, 5 )
	
	UI.bSizer1 = wx.wxBoxSizer( wx.wxVERTICAL )
	
	UI.m_button2 = wx.wxButton( UI.sbSizer1:GetStaticBox(), wx.wxID_ANY, "Собрать", wx.wxDefaultPosition, wx.wxDefaultSize, 0 )
	UI.m_button2:SetMinSize( wx.wxSize( 100,-1 ) )
	
	UI.bSizer1:Add( UI.m_button2, 0, wx.wxALL + wx.wxALIGN_RIGHT + wx.wxEXPAND, 5 )
	
	
	UI.fgSizer1:Add( UI.bSizer1, 1, wx.wxEXPAND + wx.wxALIGN_CENTER_HORIZONTAL, 5 )
	
	
	UI.sbSizer1:Add( UI.fgSizer1, 1, wx.wxEXPAND, 5 )
	
	
	UI.MyFrame4:SetSizer( UI.sbSizer1 )
	UI.MyFrame4:Layout()
	
	UI.MyFrame4:Centre( wx.wxBOTH )
	
	-- Connect Events
	
	UI.button_info:Connect( wx.wxEVT_COMMAND_BUTTON_CLICKED, function(event)
	--implements --info
	
	event:Skip()
	end )
	
	UI.m_button2:Connect( wx.wxEVT_COMMAND_BUTTON_CLICKED, function(event)
    local progname = UI.name:GetValue()
    local fllist = tostring( progname .. ".cod" )
		io.output (fllist):write([[os.execute("]] .. UI.m_textCtrl19:GetValue() .. [[")]] ):close()
    if os.rename (fllist, fllist) then
      os.execute("glue srlua.exe " .. fllist .." " .. progname .. ".exe")
    end
	local proga = tostring( progname .. ".exe")
	if os.rename (proga, proga) then
		os.remove(fllist)
	end
		--event:Skip()
	end )
	
	UI.MyFrame4:Centre( wx.wxBOTH )
	
	

UI.MyFrame4:Show()
wx.wxGetApp():MainLoop()
