LuaQ     @eXtract.lua           !      A@  @ $     $@  À  $    $À  @ $   $@ À $   $À @ $     @C A À À   @ À  D @         dofile    itemInfo.lub    d_t_s_quotes    main    sortOutput    addUnidentified    addIdentified    addSlotClass    AddItemUnidentifiedDesc    AddItemIdentifiedDesc    AddFunction    file    io    open    ConverteditemInfo.lua    w    close 	               
    @ @ A@  ^  K@ ÁÀ   ]  ^                gsub    "    \"     
                                       s     	           
        
$      À   AÀ FÀ @ À  Æ Á  À ÅA    @ ÜA¡  @þ À   ÁÁ FÂ @ À  Æ@Â  À Å    @ ÜA¡  @þÀ À   Ã FAÃ @         addUnidentified    unidentifiedDisplayName    unidentifiedResourceName    pairs    unidentifiedDescriptionName    AddItemUnidentifiedDesc    addIdentified    identifiedDisplayName    identifiedResourceName    identifiedDescriptionName    AddItemIdentifiedDesc    addSlotClass 
   slotCount 	   ClassNum     $                                                                                                                     ItemID     #      DESC     #      (for generator)          (for state)          (for control)          k 	         v 	         (for generator)          (for state)          (for control)          k          v                              @@   @À  A  À    A Á WA Á @A Á A@ý  @   	      file    write 	   tbl = {
       ð?    àÿï@   tbl     main    AddFunction                                                                             (for index)          (for limit)          (for step)          i                   )        Å   Ë@ÀA    ÁÁ    A  ÁB UÁÜ@        file    write    	[ $   ] = {
		unidentifiedDisplayName = " "   ",
		unidentifiedResourceName = " &   ",
		unidentifiedDescriptionName = {
        !   !   !   !   #   #   %   %   (   (   !   )         a           b           c                *   3     

   Å   Ë@ÀA   ÁÁ    A UAÜ@        file    write !   		},
		identifiedDisplayName = "     ",
		identifiedResourceName = " $   ",
		identifiedDescriptionName = {
     
   +   +   -   -   /   /   2   2   +   3         a     	      b     	      c     	           4   <     

   Å   Ë@ÀA   ÁÁ    A UAÜ@        file    write    		},
		slotCount =     ,
		ClassNum =     
	},
     
   5   5   7   7   8   8   ;   ;   5   <         a     	      b     	      c     	           >   @     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   ?   ?   ?   ?   ?   ?   ?   ?   ?   @         a     	      b     	           B   D     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   C   C   C   C   C   C   C   C   C   D         a     	      b     	           F   a            @@   @  AÀ           file    write   }

function main()
	for ItemID, DESC in pairs(tbl) do
		result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		if not result then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
	end
	return true, "good"
end
       ð?       G   G   _   G   `   `   `   a           !                     
         )       3   *   <   4   @   >   D   B   a   F   b   b   b   b   b   b   c   c   d   d   d   d           