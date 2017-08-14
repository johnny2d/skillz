using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Skillz.Domain.Models;

namespace Skillz.Domain.Interfaces
{
    interface IUserRepository
    {

        UserDO AddUser(UserDO user);
        UserDO getUser(int id);
    }
}
