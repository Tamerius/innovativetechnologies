import processing.serial.*;
import java.io.*;
int counter=0;
String [] subtext;
Serial myPort;


void setup() {
  myPort = new Serial(this, "COM6", 9600);
  myPort.bufferUntil('\n');
}

void draw() {
    readData("C:/xampp2/htdocs/innovativetechnologies/mySensorData.txt");
  if (counter<subtext.length) { 
    myPort.write(subtext[counter]);
    println(subtext[counter]);
    delay(100);
    counter++;
  } else {
    delay(100);
    counter = 0;
  }
} 


/* The following function will read from a CSV or TXT file */
void readData(String myFileName) {

  File file=new File(myFileName);
  BufferedReader br=null;

  try {
    br=new BufferedReader(new FileReader(file));
    String text=null;

    /* keep reading each line until you get to the end of the file */
    while ((text=br.readLine())!=null) {
      /* Spilt each line up into bits and pieces using a comma as a separator */
      subtext = splitTokens(text, ";");
    }
  }
  catch(FileNotFoundException e) {
    e.printStackTrace();
  }
  catch(IOException e) {
    e.printStackTrace();
  }
  finally {
    try {
      if (br != null) {
        br.close();
      }
    } 
    catch (IOException e) {
      e.printStackTrace();
    }
  }
}