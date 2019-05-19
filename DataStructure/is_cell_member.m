% Check an element ele is in the cell c. C should be one-dimentional.
% Return: y: bool.
function [y,index]=is_cell_member(c,ele)

y=0;
index=0;
for i=1:length(c)
	if isequal(c{i},ele)
		y=1;
		index=i;
		return
	end
end

end