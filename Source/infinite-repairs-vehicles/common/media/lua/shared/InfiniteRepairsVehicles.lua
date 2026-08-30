require "TimedActions/ISFixVehiclePartAction"

local ISFixVehiclePartAction_complete_base = ISFixVehiclePartAction.complete;
function ISFixVehiclePartAction:complete()
	local result = ISFixVehiclePartAction_complete_base(self);
	self.item:setHaveBeenRepaired(0);
	return result;
end

local ISFixVehiclePartAction_perform_base = ISFixVehiclePartAction.perform;
function ISFixVehiclePartAction:perform()
	self.item:setHaveBeenRepaired(0);
	ISFixVehiclePartAction_perform_base(self);
end
