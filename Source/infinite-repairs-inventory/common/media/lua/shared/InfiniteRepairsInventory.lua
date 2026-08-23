require "TimedActions/ISFixAction"
require "TimedActions/ISHandcraftAction"

local ISFixAction_complete_base = ISFixAction.complete;
function ISFixAction:complete()
	ISFixAction_complete_base(self);
	removeRepair(self.item);
end

local ISFixAction_perform_base = ISFixAction.perform;
function ISFixAction:perform()
	removeRepair(self.item);
	ISFixAction_perform_base(self);
end

local ISHandcraftAction_complete_base = ISHandcraftAction.complete;
function ISHandcraftAction:complete()
	ISHandcraftAction_complete_base(self);
	removeRepairs(self.items);
end

local ISHandcraftAction_perform_base = ISHandcraftAction.perform;
function ISHandcraftAction:perform()
	removeRepairs(self.items);
	ISHandcraftAction_perform_base(self);
end

function removeRepair(item)
	if item then
		item:setHaveBeenRepaired(0);
	end
end

function removeRepairs(items)
	if items then
		for i = 0, items:size() - 1 do
			local item = items:get(i);
			removeRepair(item);
		end
	end
end
