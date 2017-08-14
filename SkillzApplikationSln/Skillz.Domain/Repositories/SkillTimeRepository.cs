﻿using Skillz.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Skillz.Domain.Models;

namespace Skillz.Domain.Repositories
{
    class SkillTimeRepository : ISkillTimeRepository
    {
        public SkillTimeDO AddSkillTime(SkillTimeDO skillTime)
        {
            try
            {
                using (var conn = new SkillzModelContainer())
                {
                    var created = conn.SkillTime.Add(skillTime);
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

        public SkillTimeDO GetSkillTime(int id)
        {
            try
            {
                using (var conn = new SkillzModelContainer())
                {
                    var selected = conn.SkillTime.First(u => u.Id == id);

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
