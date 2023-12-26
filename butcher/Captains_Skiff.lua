function event_waypoint_arrive(e)
	local zone_time = eq.get_zone_time();
	local hour = zone_time["zone_hour"];
	local minute = zone_time["zone_minute"];
	if(e.wp == 2) then
		eq.stop();
		eq.debug("Shuttle to timorous (4) has reached its destination! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
		eq.get_entity_list():ForeachClient(
			function(ent)
				ent:MovePC(96, -7262, 3545, 19, 0);
			end,
			function(ent)
				if(ent:GetBoatID() == 842) then
					return true;
				end
				return false;
			end
		);
	end
end