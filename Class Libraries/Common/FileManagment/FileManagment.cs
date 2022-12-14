using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

namespace Common.FileManagement
{
    public class FileManagement
    {
        public static void Main()
        {
            // Specify a name for your top-level folder.
            string folderName = @"C:\Users\patri\Documents\Mentoriranje";

            // To create a string that specifies the path to a subfolder under your
            // top-level folder, add a name for the subfolder to folderName.
            string pathString = System.IO.Path.Combine(folderName, "WPFTutorial");

            // Create the subfolder.
            System.IO.Directory.CreateDirectory(pathString);

            // Create a file name for the file you want to create.
            string fileName = System.IO.Path.GetRandomFileName();

            // string fileName = "MyNewFile2.txt";

            // Use Combine again to add the file name to the path.
            pathString = System.IO.Path.Combine(pathString, fileName);

            // Verify the path that you have constructed.
            Debug.WriteLine("Path to my file: {0}\n", pathString);

            // DANGER: System.IO.File.Create will overwrite the file if it already exists.
            if (!System.IO.File.Exists(pathString))
            {
                using (System.IO.FileStream fs = System.IO.File.Create(pathString))
                {
                    for (byte i = 0; i < 100; i++)
                    {
                        fs.WriteByte(i);
                    }
                }
            }
            else
            {
                Debug.WriteLine("File \"{0}\" already exists.", fileName);
                return;
            }

            // Read and display the data from your file.
            try
            {
                byte[] readBuffer = System.IO.File.ReadAllBytes(pathString);
                foreach (byte b in readBuffer)
                {
                    Debug.Write(b + " ");
                }
                //Console.WriteLine();
            }
            catch (System.IO.IOException e)
            {
                Debug.WriteLine(e.Message);
            }

            // Keep the console window open in debug mode.
            Debug.WriteLine("Press any key to exit.");
            // Console.Read();
        }
        // Sample output:

        // Path to my file: c:\Top-Level Folder\SubFolder\ttxvauxe.vv0

        //0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
        //30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56
        // 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 8
        //3 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99
    }
}
