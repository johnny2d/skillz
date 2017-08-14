using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Skillz.Domain.Models;

namespace Skillz.Domain.Interfaces
{
    interface ISkillTimeRepository
    {

        SkillTimeDO AddSkillTime(SkillTimeDO skillTime);
        SkillTimeDO GetSkillTime(int id);
    }
}
