from torch import optim


def get_optim_and_scheduler(network, epochs, lr, train_all, nesterov=False):
    if train_all:
        params = network.parameters()
    else:
        params = network.get_params(lr)
    optimizer = optim.SGD(params, weight_decay=.0005, momentum=.9, nesterov=nesterov, lr=lr) #随机梯度：为啥不用adam
    #optimizer = optim.Adam(params, lr=lr)
    step_size = int(epochs * .8)
    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=step_size)
    print("Step size: %d" % step_size)
    return optimizer, scheduler
