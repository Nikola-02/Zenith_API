using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Zenith_API.Application;
using Zenith_API.Application.UseCases;

namespace Zenith_API.Implementation
{
    public class UseCaseHandler
    {
        private static int MaxUseCaseId => 27;

        private readonly IApplicationActor _actor;
        private readonly IUseCaseLogger _logger;
        public UseCaseHandler(IApplicationActor actor, IUseCaseLogger logger)
        {
            _actor = actor;
            _logger = logger;
        }

        public void HandleCommand<TData>(ICommand<TData> command, TData data)
        {
            HandleCrossCuttingConcerns(command, data);

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();

            command.Execute(data);

            stopwatch.Stop();

            Console.WriteLine($"UseCase: {command.Name}, {stopwatch.ElapsedMilliseconds} ms");
        }

        public TResult HandleQuery<TResult, TSearch>(IQuery<TResult, TSearch> query, TSearch search)
            where TResult : class
        {
            HandleCrossCuttingConcerns(query, search);

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();

            var result = query.Execute(search);

            stopwatch.Stop();

            Console.WriteLine($"UseCase: {query.Name}, {stopwatch.ElapsedMilliseconds} ms");

            return result;
        }

        private void HandleCrossCuttingConcerns(IUseCase useCase, object data)
        {
            if (!_actor.AllowedUseCases.Contains(useCase.Id))
            {
                throw new UnauthorizedAccessException();
            }

            var log = new UseCaseLog
            {
                UseCaseData = data,
                UseCaseName = useCase.Name,
                Username = _actor.Username,
            };

            _logger.Log(log);
        }
    }
}
