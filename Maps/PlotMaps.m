

% Plot all map instances

close all
ifig = 1;
for ie = 5:5:25 % nro of edges
    for jp = 1:5 % nro of polygons
        for kep = [5 10] % nro edges of polygon

            ifig = ifig + 1;
            nedges = ie;
            npoly = jp;
            nsidepoly = kep;

            Name = ['map_mygraph_edges' num2str(nedges) '_numpoly' num2str(npoly) '_side' num2str(nsidepoly)];
            load(Name)

            % plot polygons
            figure(ifig)
            for i = 1:numel(po) fill(po{i}(:,1), po{i}(:,2), 'b'); hold on; end
            
            for i = 1:size(edge_from,1)
                x = [edge_from(i, 1) edge_to(i, 1)];
                y = [edge_from(i, 2) edge_to(i, 2)];
                plot(x, y);
            end

        end
    end
end
