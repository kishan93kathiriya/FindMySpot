package vo;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


import org.junit.Test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class TestDijkstraAlgorithm {

        private List<Vertex> nodes;
        private List<Edge> edges;

        @Test
        public List<Vertex> testExcute(String Entrance) {
        	System.out.println(Entrance);
                nodes = new ArrayList<Vertex>();
                edges = new ArrayList<Edge>();
                String a[]=new String[28];
                a[0]="Old Main Parking";
                a[1]="Lecture Center Parking";
                a[2]="Lecture Center Parking";
                a[3]="Terrence Parking";
                a[4]="Library Parking";
                a[5]="ELTING Parking 1";
                a[6]="ELTING Parking 2";
                a[7]="ELTING Parking 3";
                a[8]="West Parking";
                a[9]="Children Ctr. Parking";
                a[10]="Children Ctr. Parking";
                a[11]="Escopse Parking";
                a[12]="South Parking";
                a[13]="Escopse Parking";
                a[14]="LENAPE Hall Parking";
                a[15]="Pond Parking";
                a[16]="Admin Parking";
                a[17]="Mohonk Parking";
                a[18]="Pond Parking";
                a[19]="CRISPELL Parking";
                a[20]="Admin PArking";
                a[21]="South Entarance";
                a[22]="LENAPE Hall Parking";
                a[23]="North Entarance";
                a[24]="Old Main Parking";
                a[25]="Lecture Center Parking";
                a[26]="Old Main Parking";
                a[27]="Old Main Parking";
                
                for (int i = 0; i < 28; i++) {
                        Vertex location = new Vertex(a[i],a[i]);
                        nodes.add(location);
                }
                Graph graph = new Graph(nodes, edges);
                
                Vertex target;
                Vertex source;
                if(Entrance.equals("east"))
                {
                	source=nodes.get(0);
                	double i=Math.floor(Math.random()*10);
                	System.out.println(i);
                	if(i>5)
                		target=nodes.get(14);
                	else
                		target=nodes.get(8);
                	
                }
                else if(Entrance.equals("west"))
                {
                	System.out.println("q2");
                	source=nodes.get(18);
                	target=nodes.get(8);
                }
                else if(Entrance.equals("north"))
                {
                	System.out.println("q3");
                	source=nodes.get(19);
                	target=nodes.get(5);
                }
                else if(Entrance.equals("south"))
                {
                	System.out.println("q4");
                	source=nodes.get(17);
                	target=nodes.get(13);
                }
                else
                {
                	System.out.println("qw");
                	source=nodes.get(0);
                	target=nodes.get(5);
                }
                
                addLane("Old Main Parking", 0, 1, 14);
                addLane("Lecture Center Parking", 0, 2, 15);
                addLane("Lecture Center Parking", 1, 2, 1);
                addLane("Terrence Parking", 2, 3, 2);
                addLane("Library Parking", 3, 4, 2);
                addLane("ELTING Parking 1", 4, 5, 2);
                addLane("ELTING Parking 2", 5, 6, 2);
                addLane("ELTING Parking 3", 6, 7, 2);
                addLane("West Parking", 5, 8, 6);
                addLane("Children Ctr. Parking", 5, 9, 8);
                addLane("Children Ctr. Parking", 8, 9, 2);
                addLane("Escopse Parking", 9, 10, 3);
                addLane("South Parking", 9, 11, 6);
                addLane("Escopse Parking", 11, 10, 1);
                addLane("LENAPE Hall Parking", 9, 12, 4);
                addLane("Pond Parking", 8, 13, 4);
                addLane("Admin Parking", 13, 15, 8);
                addLane("Mohonk Parking", 13, 14, 2);
                addLane("Pond Parking", 17, 13, 4);
                addLane("CRISPELL Parking", 17, 20, 4);
                addLane("CRISPELL Parking", 0, 20, 5);
                addLane("Admin PArking", 0, 15, 6);
                addLane("South Entarance", 0, 17, 5);
                addLane("LENAPE Hall Parking", 18, 12, 2);
                addLane("LENAPE Hall Parking", 12, 18, 2);
                addLane("North Entarance", 0, 19, 15);
                addLane("Old Main Parking", 19, 1, 2);
                addLane("Lecture Center Parking", 19, 2, 2);
                
                
                

                // Lets check from location Loc_1 to Loc_10
                DijkstraAlgorithm dijkstra = new DijkstraAlgorithm(graph);
                dijkstra.execute(source);
                LinkedList<Vertex> path = dijkstra.getPath(target);

                assertNotNull(path);
                assertTrue(path.size() > 0);

                List<Vertex> list=new ArrayList();
                for(Vertex vertex : path){
                	list.add(vertex);
                }
                return list;
                
        }

        private void addLane(String laneId, int sourceLocNo, int destLocNo,
                        int duration) {
                Edge lane = new Edge(laneId,nodes.get(sourceLocNo), nodes.get(destLocNo), duration );
                edges.add(lane);
        }
}