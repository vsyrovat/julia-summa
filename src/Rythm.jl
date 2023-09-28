module Rythm

function summa(values...)
    acc, errors = do_summa(values, [])
    if size(errors, 1) > 0
        return map((x) -> Tuple(x), errors)
    else
        return acc
    end
end

function do_summa(values, stackpos)
    acc = 0
    errors = []
    pos = 0
    for v in values
        pos = pos + 1
        s = copy(stackpos)
        push!(s, pos)
        if v isa Number
            acc = acc + v
        elseif v isa String
            parsed = tryparse(Float64, v)
            if isnothing(parsed)
                push!(errors, s)
            else
                acc = acc + parsed
            end
        elseif v isa Array || v isa Tuple
            acc_add, errors_add = do_summa(v, s)
            acc = acc + acc_add
            for e in errors_add
                push!(errors, e)
            end
        else
            push!(errors, s)
        end
    end
    return acc, errors
end

export summa

end
