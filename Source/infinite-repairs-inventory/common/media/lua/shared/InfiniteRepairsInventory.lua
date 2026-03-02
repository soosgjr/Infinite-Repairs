require "TimedActions/ISFixAction"

local ISFixAction_complete_base = ISFixAction.complete;
function ISFixAction:complete()
	ISFixAction_complete_base(self);
	self.item:setHaveBeenRepaired(0);
end

local ISFixAction_perform_base = ISFixAction.perform;
function ISFixAction:perform()
	self.item:setHaveBeenRepaired(0);
	ISFixAction_perform_base(self);
end
