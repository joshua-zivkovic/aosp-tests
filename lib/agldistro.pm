package agldistro; 
use base 'distribution'; 
use testapi qw(get_required_var get_var);

# use testapi qw(check_var send_key type_string assert_screen);
sub init() {
    my ($self) = @_;

    $self->SUPER::init();
    $self->init_consoles();
}

# initialize the consoles needed during our tests
sub init_consoles {
    my ($self) = @_;

    $self->add_console('root-virtio-terminal', 'virtio-terminal', {});

    $self->add_console('x11', 'tty-console', {tty => 1});
    $self->add_console('log-console', 'tty-console', {tty => 2});
    $self->add_console('user-console', 'tty-console', {tty => 3});
}

1;
