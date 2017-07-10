const Y = f => (x => x(x))(x => f(z => x(x)(z)));

export default Y;