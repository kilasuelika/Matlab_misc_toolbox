% Given a symemtric binary relationship matrix. Finde it's transitive closure.
% Return: a cell. Each element is a vector contain indices of each group.
function trans_cell = trans_closure(m)
N=length(m);
trans_m=m;
for i=2:N
	trans_m=trans_m | m ^ i;
end

trans_cell={};

finded=zeros(1,N);

for i=1:N
	if ~finded(i)
		pos1=find(trans_m(i,:)==1);
		pos0=find(trans_m(i,:)==0);
		finded(pos1)=1;
		trans_cell{end+1}=pos1;
	end
end

end