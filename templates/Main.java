import java.io.*;
import java.util.*;

class  Main{
    static public void main(String[] str){

        Scanner cin = new Scanner(new BufferedInputStream(System.in)); 
        int t = cin.nextInt();
        for (int p=0; p<t; p++) {
            int n = cin.nextInt();
            int m = cin.nextInt();
            String map1[] = new String[101];
            String map2[] = new String[101];
            for (int i=0; i<m; i++)
            {
                map1[i] = cin.next();
                map2[i] = cin.next();
                //System.out.println(map1[i] + " " + map2[i]);
            }
            String filter = cin.nextLine();
            String linestr = cin.nextLine();
            //System.out.println(linestr + " debug");
            System.out.print("Case #" + (p+1) + ": ");
            
            String[] array = linestr.split(" +");
            int vis[] = new int[101];
            for (int i=0; i<n-1; i++)
            {
                Arrays.fill(vis, 0);
                for(int k=0; k<array.length; k++)
                for (int j=0; j<m; j++)
                {
                    if ( array[k].equals(map1[j]) && vis[k] != 1)
                    {
                        vis [k] = 1;
                        array[k] = map2[j];
                    }
                }
            }
            for(int i=0;i<array.length - 1;i++)
                System.out.print(array[i]+" ");
            System.out.println(array[array.length-1]);


        }
        //String s="1234 567\n890\n110A";
        //String[] array=s.split("[ ]");
    }//main
}//class
