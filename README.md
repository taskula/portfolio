# Portfolio

This is a tiny Mojolicious::Lite application for my portfolio.

A live version of this application can be seen running at https://lari.taskula.fi.

### Prerequisites

```
sudo cpan Mojolicious
```

### Installing

```
git clone https://github.com/taskula/portfolio.git
cd portfolio
export PERL5LIB=$PERL5LIB:$(pwd)/lib
```

## Running the tests

```
prove ./t
```

## Deployment

```
hypnotoad ./taskula.pl
```

## Author

* **Lari Taskula**

## License

Ssee the [LICENSE.md](LICENSE.md) file for details
