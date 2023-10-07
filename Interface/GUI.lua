local Unlocker, Caffeine, Project = ...

Project.Settings = Caffeine.Interface.Category:New("TestIgnore")

Project.Settings:AddSubsection("Ignore Me")

Project.Hotbar = Caffeine.Interface.Hotbar:New({
	name = "TestIgnore",
	options = Project.Settings,
	buttonCount = 2,
})

Project.Settings:Register()