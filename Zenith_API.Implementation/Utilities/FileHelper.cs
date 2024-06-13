using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Implementation.Utilities
{
    public static class FileHelper
    {
        private static string RootFolder => "wwwroot";

        public static void MoveFile(string sourceFolder, string destinationFolder, string fileName)
        {
            var tempFile = Path.Combine(RootFolder, sourceFolder, fileName);

            var destinationFile = Path.Combine(RootFolder, destinationFolder, fileName);

            System.IO.File.Move(tempFile, destinationFile);
        }
    }
}
