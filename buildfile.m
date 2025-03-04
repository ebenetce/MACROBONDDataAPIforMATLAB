function plan = buildfile
import matlab.buildtool.tasks.CodeIssuesTask
import matlab.buildtool.tasks.TestTask

% Create a plan from task functions
plan = buildplan(localfunctions);

% Add the "check" task to identify code issues
plan("check") = CodeIssuesTask;

% Add the "test" task to run tests
plan("test") = TestTask;

% Make the "archive" task the default task in the plan
plan.DefaultTasks = "archive";

% Make the "archive" task dependent on the "check" and "test" tasks
plan("archive").Dependencies = ["check" "test"];
end

function archiveTask(~)
% Create a Toolbox
opts = matlab.addons.toolbox.ToolboxOptions("tbx", "5b3a40ff-8e75-4b28-a27e-cd99579c0427");
opts.ToolboxName = 'Macrobond Data API';
opts.ToolboxVersion = '0.1.0';
opts.AuthorCompany = 'MathWorks';
opts.AuthorEmail = 'ebenetce@mathworks.com';
opts.AuthorName = 'Eduard Benet Cerdà';
opts.Description = 'This toolbox is an autogenerated MATLAB wrapper around the Macrobond Data WEB API';
opts.Summary = 'Macrobond Data API for MATLAB';
opts.OutputFile = 'Macrobond.mltbx';
opts.ToolboxFiles = 'tbx/macrobond/+macrobond';
opts.ToolboxMatlabPath = 'tbx/macrobond';

matlab.addons.toolbox.packageToolbox(opts);
end