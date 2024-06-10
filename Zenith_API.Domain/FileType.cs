﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zenith_API.Domain
{
    public class FileType : NamedEntity
    {
        public virtual ICollection<File> Files { get; set; } = new HashSet<File>();
    }
}
