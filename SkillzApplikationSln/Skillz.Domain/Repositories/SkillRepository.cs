using Skillz.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Skillz.Domain.Models;

namespace Skillz.Domain.Repositories
{
    class SkillRepository : ISkillRepository
    {
        public SkillDO AddSkill(SkillDO skill)
        {
            try
            {
                using (var conn = new SkillzModelContainer())
                {
                    var created = conn.Skill.Add(skill);
                    conn.SaveChanges();

                    return created;
                }
            }
            catch (Exception ex)
            {
                // TODO: better handling
                Console.WriteLine(ex.GetType().FullName);
                Console.WriteLine(ex.Message);
                while (ex.InnerException != null)
                {
                    ex = ex.InnerException;
                    Console.WriteLine(ex.GetType().FullName);
                    Console.WriteLine(ex.Message);
                }
                return null;
            }
        }

        public SkillDO getSkill(int id)
        {
            try
            {
                using (var conn = new SkillzModelContainer())
                {
                    var selected = conn.Skill.First(u => u.Id == id);

                    return selected;
                }
            }
            catch (Exception ex)
            {
                // TODO: better handling
                Console.WriteLine(ex.GetType().FullName);
                Console.WriteLine(ex.Message);
                while (ex.InnerException != null)
                {
                    ex = ex.InnerException;
                    Console.WriteLine(ex.GetType().FullName);
                    Console.WriteLine(ex.Message);
                }
                return null;
            }
        }
    }
}
