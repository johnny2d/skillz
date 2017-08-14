using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Skillz.Domain.Models;

namespace Skillz.Domain.Interfaces
{
    interface IExerciseRepository
    {
        ExerciseDO AddExercise(ExerciseDO exercise);
        ExerciseDO GetExercise(int id);
    }
}
