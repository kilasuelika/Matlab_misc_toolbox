% Merge two cells.
function cm=merge_cell(c1,c2)
if isempty(c1)
	cm=c2;
	return
end

if isempty(c2)
	cm=c1;
	return
end

cm=c1;
for i=1:length(c2)
	[y,index]=is_cell_member(c1,c2{i});
	cm{end+1}=c2{i};
end

end
